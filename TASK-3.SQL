CREATE TABLE IF NOT EXISTS Migrated_Books (
    Book_ID INT PRIMARY KEY, 
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100),
    Price DECIMAL(10, 2) CHECK (Price > 0), 
    Stock INT DEFAULT 0
);

INSERT INTO Migrated_Books (Book_ID, Title, Author, Price, Stock)
SELECT Book_ID, Title, Author, Price, Stock FROM Books;