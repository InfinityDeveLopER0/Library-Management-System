--INNER JOIN – Members who borrowed books

SELECT 
    Members.Name AS MemberName,
    Books.Title AS BookTitle,
    Transactions.IssueDate,
    Transactions.DueDate
FROM 
    Transactions
INNER JOIN Members ON Transactions.MemberID = Members.MemberID
INNER JOIN Books ON Transactions.BookID = Books.BookID;


--UNION – All book IDs either in transactions or reservations

SELECT BookID FROM Transactions
UNION
SELECT BookID FROM Reservations;


--View_LibraryActivity

CREATE VIEW View_LibraryActivity AS
SELECT
    T.TransactionID,
    B.BookID,
    B.Title AS BookTitle,
    B.Category,
    M.MemberID,
    M.Name AS MemberName,
    M.Email AS MemberEmail,
    T.IssueDate,
    T.DueDate,
    T.ReturnDate,
    T.FineAmount,
    F.PaymentStatus,
    R.Status AS ReservationStatus,
    S.Name AS IssuedByStaff
FROM Transactions T
JOIN Books B ON T.BookID = B.BookID
JOIN Members M ON T.MemberID = M.MemberID
LEFT JOIN Fines F ON T.BookID = F.BookID AND T.MemberID = F.MemberID
LEFT JOIN Reservations R ON T.BookID = R.BookID AND T.MemberID = R.MemberID
LEFT JOIN Staff S ON T.IssuedByStaffID = S.StaffID;


-- Get all current library activity
SELECT * FROM View_LibraryActivity;



--Trigger 1: Book is issued – reduce available quantity

DELIMITER //

CREATE TRIGGER trg_decrease_quantity_after_issue
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    UPDATE Books
    SET QuantityAvailable = QuantityAvailable - 1
    WHERE BookID = NEW.BookID;
END;
//

DELIMITER ;

--working of triggerL

--Check Initial Book Quantity
SELECT BookID, Title, QuantityAvailable FROM Books WHERE BookID = 1;
--Insert a Transaction (Simulate issuing a book)
INSERT INTO Transactions (BookID, MemberID, IssueDate, DueDate, IssuedByStaffID)
VALUES (1, 1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY), 1);
--Now check if the quantity decreased:



--Trigger 2: Book is returned – increase available quantity

DELIMITER //

CREATE TRIGGER trg_increase_quantity_after_return
AFTER UPDATE ON Transactions
FOR EACH ROW
BEGIN
    -- Only act when a book is actually returned
    IF OLD.ReturnDate IS NULL AND NEW.ReturnDate IS NOT NULL THEN
        UPDATE Books
        SET QuantityAvailable = QuantityAvailable + 1
        WHERE BookID = NEW.BookID;
    END IF;
END;
//

DELIMITER ;

 --Update Return Date
UPDATE Transactions
SET ReturnDate = CURDATE()
WHERE BookID = 1 AND MemberID = 1 AND ReturnDate IS NULL;
--Now check
SELECT QuantityAvailable FROM Books WHERE BookID = 1;


SHOW TRIGGERS;


--Cursor

DELIMITER //

CREATE PROCEDURE CheckLowStockBooks()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_Title VARCHAR(255);
    DECLARE v_Quantity INT;

    -- Cursor for low-stock books
    DECLARE cur CURSOR FOR
        SELECT Title, QuantityAvailable
        FROM Books
        WHERE QuantityAvailable < 3;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_Title, v_Quantity;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Instead of inserting, just display
        SELECT CONCAT('Book "', v_Title, '" is low in stock: ', v_Quantity, ' left.') AS StockAlert;

    END LOOP;

    CLOSE cur;
END;
//

DELIMITER ;

CALL CheckLowStockBooks();


