CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    ISBN VARCHAR(20),
    Category VARCHAR(100),
    QuantityAvailable INT,
    ShelfLocation VARCHAR(50),
    Edition VARCHAR(50),
    LastIssuedDate DATE
);

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Address TEXT,
    MembershipStartDate DATE,
    MembershipExpiryDate DATE,
    DateOfBirth DATE,
    MembershipType VARCHAR(50)
);



CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    IssueDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FineAmount DECIMAL(10,2),
    IssuedByStaffID INT,
    ReturnCondition VARCHAR(50),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (IssuedByStaffID) REFERENCES Staff(StaffID)
);


CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Designation VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    Role VARCHAR(50),
    LastLogin DATETIME
);


CREATE TABLE Reservations (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    ReservationDate DATE,
    ExpirationDate DATE,
    Status VARCHAR(50) CHECK (Status IN ('Pending', 'Completed', 'Canceled')),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);



CREATE TABLE Fines (
    FineID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    FineAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(50) CHECK (PaymentStatus IN ('Paid', 'Pending')),
    PaymentMethod VARCHAR(50),
    FineReason VARCHAR(100),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

