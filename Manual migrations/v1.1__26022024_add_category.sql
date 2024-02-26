CREATE TABLE Categories (
	id int PRIMARY KEY,
	title NVARCHAR(220) NOT NULL

)

ALTER TABLE Products 
ADD category_id int;

ALTER TABLE Products
ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES Categories(id);