BEGIN
    ALTER TABLE ProductRatings
    DROP CONSTRAINT FK_ProductRatings_ProductID;
END;

BEGIN
    DROP TABLE ProductRatings;
END;