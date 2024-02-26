-- Create ProductRatings table
CREATE TABLE ProductRatings (
    ProductRatingID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL,
    Rating INT NOT NULL,
    Review NVARCHAR(MAX),
    CONSTRAINT FK_ProductRatings_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);