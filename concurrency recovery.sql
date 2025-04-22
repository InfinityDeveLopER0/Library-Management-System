-- Concurrency Control

--setting the Isolation Level
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

--Transactions for Critical Operations
--Book Issue Transaction

START TRANSACTION;

UPDATE Books
SET QuantityAvailable = QuantityAvailable - 1
WHERE BookID = 15 AND QuantityAvailable > 0;

INSERT INTO Transactions (BookID, MemberID, IssueDate, DueDate, FineAmount, IssuedByStaffID)
VALUES (15, 2, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 14 DAY), 0.00, 5);

COMMIT;

--If any step fails:
ROLLBACK;


--Apply Row-Level Locking Where Needed. To prevent race conditions

START TRANSACTION;

SELECT QuantityAvailable FROM Books
WHERE BookID = 11 FOR UPDATE;

-- Check QuantityAvailable, then issue...

COMMIT;


--Recovery Mechanisms

--Enable Binary Logging In MySQL
[mysqld]
log-bin=mysql-bin


--Schedule Automatic Backups
mysqldump -u root -p library_db > library_backup_$(date +%F).sql


--Using Triggers For Recovery Support

CREATE TABLE BookUpdateLogs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    OldQuantity INT,
    NewQuantity INT,
    UpdatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TRIGGER log_book_update
AFTER UPDATE ON Books
FOR EACH ROW
BEGIN
    INSERT INTO BookUpdateLogs (BookID, OldQuantity, NewQuantity)
    VALUES (OLD.BookID, OLD.QuantityAvailable, NEW.QuantityAvailable);
END;

