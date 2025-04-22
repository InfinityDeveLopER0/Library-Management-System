INSERT INTO Books (Title, Author, Publisher, ISBN, Category, QuantityAvailable, ShelfLocation, Edition, LastIssuedDate) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 'Fiction', 5, 'A1', 'First', '2025-03-15'),
('To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '9780061120084', 'Fiction', 8, 'A2', '50th Anniversary', '2025-04-10'),
('1984', 'George Orwell', 'Secker & Warburg', '9780451524935', 'Dystopian', 6, 'A3', 'Revised', '2025-02-20'),
('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '9780316769488', 'Fiction', 4, 'A4', 'First', '2025-03-05'),
('Pride and Prejudice', 'Jane Austen', 'Thomas Egerton', '9780199535569', 'Romance', 7, 'B1', 'Classic', '2025-03-28'),
('The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780547928227', 'Fantasy', 10, 'B2', '75th Anniversary', '2025-04-12'),
('Harry Potter and the Sorcerer’s Stone', 'J.K. Rowling', 'Bloomsbury', '9780439708180', 'Fantasy', 12, 'B3', 'Illustrated', '2025-03-18'),
('The Da Vinci Code', 'Dan Brown', 'Doubleday', '9780385504201', 'Thriller', 9, 'C1', 'First', '2025-04-02'),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', '9780062316097', 'History', 6, 'C2', 'Updated', '2025-02-25'),
('Educated', 'Tara Westover', 'Random House', '9780399590504', 'Biography', 5, 'D1', 'First', '2025-03-30'),
('The Lean Startup', 'Eric Ries', 'Crown Publishing', '9780307887894', 'Business', 8, 'D2', 'Revised', '2025-02-14'),
('Atomic Habits', 'James Clear', 'Avery', '9780735211292', 'Self-Help', 9, 'D3', 'First', '2025-03-22'),
('The Psychology of Money', 'Morgan Housel', 'Harriman House', '9780857197689', 'Finance', 7, 'E1', 'First', '2025-02-28'),
('Deep Work', 'Cal Newport', 'Grand Central Publishing', '9781455586691', 'Productivity', 5, 'E2', 'Revised', '2025-04-05'),
('Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', '9780374275631', 'Psychology', 6, 'E3', 'Updated', '2025-03-12'),
('A Brief History of Time', 'Stephen Hawking', 'Bantam', '9780553380163', 'Science', 10, 'F1', 'Revised', '2025-04-01'),
('The Art of War', 'Sun Tzu', 'Shambhala', '9781590302255', 'Philosophy', 4, 'F2', 'Classic', '2025-03-09'),
('Meditations', 'Marcus Aurelius', 'Modern Library', '9780812968255', 'Philosophy', 6, 'F3', 'Updated', '2025-02-18'),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'HarperOne', '9780062457714', 'Self-Help', 9, 'G1', 'First', '2025-03-25'),
('The Power of Habit', 'Charles Duhigg', 'Random House', '9780812981605', 'Self-Help', 7, 'G2', 'Revised', '2025-04-07');

UPDATE Books SET QuantityAvailable = 1 WHERE BookID = 1;
UPDATE Books SET QuantityAvailable = 1 WHERE BookID = 2;
UPDATE Books SET QuantityAvailable = 1 WHERE BookID = 20;
UPDATE Books SET QuantityAvailable = 1 WHERE BookID = 12;


select * from Books;


INSERT INTO Members (Name, Email, Phone, Address, MembershipStartDate, MembershipExpiryDate, DateOfBirth, MembershipType) VALUES
('Ravi Kumar', 'ravi.kumar@example.com', '9876543210', '123 Main Street, Chennai', '2025-01-01', '2026-01-01', '1990-05-15', 'Regular'),
('Anjali Sharma', 'anjali.sharma@example.com', '8765432109', '456 Elm Street, Bangalore', '2025-02-01', '2026-02-01', '1985-08-20', 'Premium'),
('Vikram Singh', 'vikram.singh@example.com', '7654321098', '789 Oak Street, Delhi', '2025-03-01', '2026-03-01', '1992-12-10', 'Regular'),
('Priya Patel', 'priya.patel@example.com', '6543210987', '321 Pine Street, Mumbai', '2025-04-01', '2026-04-01', '1988-03-25', 'Premium'),
('Arjun Das', 'arjun.das@example.com', '5432109876', '987 Maple Street, Kolkata', '2025-05-01', '2026-05-01', '1995-07-30', 'Regular'),
('Meera Nair', 'meera.nair@example.com', '4321098765', '654 Cedar Street, Hyderabad', '2025-06-01', '2026-06-01', '1993-11-05', 'Premium'),
('Rajesh Gupta', 'rajesh.gupta@example.com', '3210987654', '789 Birch Street, Pune', '2025-07-01', '2026-07-01', '1987-09-18', 'Regular'),
('Sneha Reddy', 'sneha.reddy@example.com', '2109876543', '123 Willow Street, Ahmedabad', '2025-08-01', '2026-08-01', '1991-06-22', 'Premium'),
('Karan Kapoor', 'karan.kapoor@example.com', '1098765432', '456 Aspen Street, Jaipur', '2025-09-01', '2026-09-01', '1994-04-12', 'Regular'),
('Divya Menon', 'divya.menon@example.com', '0987654321', '321 Spruce Street, Kochi', '2025-10-01', '2026-10-01', '1989-01-08', 'Premium'),
('Amit Verma', 'amit.verma@example.com', '9876543211', '789 Palm Street, Lucknow', '2025-11-01', '2026-11-01', '1990-02-14', 'Regular'),
('Neha Joshi', 'neha.joshi@example.com', '8765432110', '456 Maple Avenue, Chandigarh', '2025-12-01', '2026-12-01', '1985-06-18', 'Premium'),
('Rohan Mehta', 'rohan.mehta@example.com', '7654321109', '123 Oak Lane, Surat', '2025-01-15', '2026-01-15', '1992-09-25', 'Regular'),
('Pooja Iyer', 'pooja.iyer@example.com', '6543211098', '789 Cedar Road, Coimbatore', '2025-02-15', '2026-02-15', '1988-11-30', 'Premium'),
('Siddharth Jain', 'siddharth.jain@example.com', '5432109877', '456 Birch Boulevard, Nagpur', '2025-03-15', '2026-03-15', '1995-04-05', 'Regular'),
('Asha Roy', 'asha.roy@example.com', '4321098766', '123 Willow Court, Mysore', '2025-04-15', '2026-04-15', '1993-07-20', 'Premium'),
('Manish Agarwal', 'manish.agarwal@example.com', '3210987655', '789 Aspen Drive, Bhopal', '2025-05-15', '2026-05-15', '1987-12-10', 'Regular'),
('Shweta Desai', 'shweta.desai@example.com', '2109876544', '456 Spruce Street, Patna', '2025-06-15', '2026-06-15', '1991-03-22', 'Premium'),
('Nikhil Chatterjee', 'nikhil.chatterjee@example.com', '1098765433', '123 Palm Avenue, Guwahati', '2025-07-15', '2026-07-15', '1994-08-15', 'Regular'),
('Ritika Malhotra', 'ritika.malhotra@example.com', '0987654322', '789 Maple Lane, Indore', '2025-08-15', '2026-08-15', '1989-05-10', 'Premium');

select * from members;


INSERT INTO Staff (Name, Designation, Email, Phone, Username, Password, Role, LastLogin) VALUES
('Arun Kumar', 'Librarian', 'arun.kumar@example.com', '9876543210', 'arunkumar', 'password123', 'Admin', '2025-04-20 10:15:00'),
('Meena Sharma', 'Assistant Librarian', 'meena.sharma@example.com', '8765432109', 'meenasharma', 'securepass456', 'Staff', '2025-04-21 09:45:00'),
('Rajesh Gupta', 'Catalog Manager', 'rajesh.gupta@example.com', '7654321098', 'rajeshgupta', 'catalog789', 'Staff', '2025-04-19 11:30:00'),
('Priya Patel', 'Technical Support', 'priya.patel@example.com', '6543210987', 'priyapatel', 'techsupport321', 'Staff', '2025-04-18 14:00:00'),
('Anil Das', 'Library Assistant', 'anil.das@example.com', '5432109876', 'anildas', 'assistant654', 'Staff', '2025-04-17 16:20:00');


select * from Staff;


INSERT INTO Transactions (BookID, MemberID, IssueDate, DueDate, ReturnDate, FineAmount, IssuedByStaffID, ReturnCondition) VALUES
(1, 3, '2025-01-02', '2025-01-16', '2025-01-15', 0.00, 1, 'Good'),
(2, 7, '2025-01-05', '2025-01-19', '2025-01-18', 0.00, 2, 'Good'),
(3, 12, '2025-01-10', '2025-01-24', '2025-01-23', 0.00, 3, 'Bad'),
(4, 15, '2025-01-15', '2025-01-29', '2025-01-28', 10.00, 4, 'Bad'),
(5, 8, '2025-01-20', '2025-02-03', '2025-02-02', 0.00, 5, 'Good'),
(6, 2, '2025-01-25', '2025-02-08', '2025-02-07', 5.00, 1, 'Bad'),
(7, 10, '2025-02-01', '2025-02-15', '2025-02-14', 0.00, 2, 'Good'),
(8, 5, '2025-02-05', '2025-02-19', '2025-02-18', 0.00, 3, 'Good'),
(9, 18, '2025-02-10', '2025-02-24', '2025-02-23', 0.00, 4, 'Good'),
(10, 20, '2025-02-15', '2025-02-28', '2025-02-27', 0.00, 5, 'Good'),
(11, 1, '2025-03-01', '2025-03-15', '2025-03-14', 0.00, 1, 'Good'),
(12, 4, '2025-03-05', '2025-03-19', '2025-03-18', 0.00, 2, 'Good'),
(13, 6, '2025-03-10', '2025-03-24', '2025-03-23', 0.00, 3, 'Bad'),
(14, 9, '2025-03-15', '2025-03-29', '2025-03-28', 15.00, 4, 'Bad'),
(15, 13, '2025-03-20', '2025-04-03', '2025-04-02', 0.00, 5, 'Good'),
(16, 16, '2025-03-25', '2025-04-08', '2025-04-07', 0.00, 1, 'Good'),
(17, 11, '2025-04-01', '2025-04-15', '2025-04-14', 0.00, 2, 'Good'),
(18, 14, '2025-04-05', '2025-04-19', '2025-04-18', 0.00, 3, 'Good'),
(19, 17, '2025-04-10', '2025-04-24', '2025-04-23', 0.00, 4, 'Good'),
(20, 19, '2025-04-15', '2025-04-29', '2025-04-28', 0.00, 5, 'Good');


select * from Transactions


INSERT INTO Reservations (BookID, MemberID, ReservationDate, ExpirationDate, Status) VALUES
(1, 3, '2025-01-02', '2025-01-16', 'Completed'),
(2, 7, '2025-01-05', '2025-01-19', 'Canceled'),
(3, 12, '2025-01-10', '2025-01-24', 'Pending'),
(4, 15, '2025-01-15', '2025-01-29', 'Completed'),
(5, 8, '2025-01-20', '2025-02-03', 'Pending'),
(6, 2, '2025-01-25', '2025-02-08', 'Completed'),
(7, 10, '2025-02-01', '2025-02-15', 'Canceled'),
(8, 5, '2025-02-05', '2025-02-19', 'Completed'),
(9, 18, '2025-02-10', '2025-02-24', 'Pending'),
(10, 20, '2025-02-15', '2025-02-28', 'Completed'),
(11, 1, '2025-03-01', '2025-03-15', 'Pending'),
(12, 4, '2025-03-05', '2025-03-19', 'Completed'),
(13, 6, '2025-03-10', '2025-03-24', 'Canceled'),
(14, 9, '2025-03-15', '2025-03-29', 'Completed'),
(15, 13, '2025-03-20', '2025-04-03', 'Pending'),
(16, 16, '2025-03-25', '2025-04-08', 'Completed'),
(17, 11, '2025-04-01', '2025-04-15', 'Pending'),
(18, 14, '2025-04-05', '2025-04-19', 'Completed'),
(19, 17, '2025-04-10', '2025-04-24', 'Canceled'),
(20, 19, '2025-04-15', '2025-04-29', 'Completed');


select * from Reservations


INSERT INTO Fines (MemberID, BookID, FineAmount, PaymentStatus, PaymentMethod, FineReason) VALUES
(3, 6, 5.00, 'Paid', 'Cash', 'Damaged Cover'),
(12, 3, 10.00, 'Paid', 'Credit Card', 'Torn Pages'),
(15, 4, 15.00, 'Paid', 'UPI', 'Water Damage'),
(6, 13, 8.00, 'Paid', 'Debit Card', 'Stained Pages'),
(9, 14, 12.00, 'Paid', 'Cash', 'Binding Damage');


select * from Fines


