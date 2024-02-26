ALTER TABLE Product
DROP CONSTRAINT fk_category_id;

ALTER TABLE Product
DROP COLUMN category_id;

DROP TABLE Categories