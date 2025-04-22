--Here, BookID → ISBN, but ISBN → Title, Author, Publisher, Category, Edition.
--That means the book’s core data is repeating for every copy of the same book.
--To fix this: Apply Normalization by Splitting the Books table

CREATE TABLE BooksN (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(20),
    QuantityAvailable INT,
    ShelfLocation VARCHAR(50),
    LastIssuedDate DATE,
    FOREIGN KEY (ISBN) REFERENCES BookDetails(ISBN)
);

CREATE TABLE BookDetails (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    Category VARCHAR(100),
    Edition VARCHAR(50)
);



