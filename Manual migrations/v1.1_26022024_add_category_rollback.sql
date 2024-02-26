ALTER TABLE Products
DROP CONSTRAINT fk_category_id;

ALTER TABLE Products
DROP COLUMN category_id;

DROP TABLE Categories