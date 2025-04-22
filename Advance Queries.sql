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


SHOW TRIGGERS;


