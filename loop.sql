--------------------------
-- Create OrderItemsTest table
--------------------------
CREATE TABLE IF NOT EXISTS OrderItemsTest
(
  item_id     integer       NOT NULL,
  sku         char(100) NOT NULL
);

select * from OrderItemsTest;


DO $$
 DECLARE
     item_id_   OrderItemsTest.item_id%TYPE;
     sku_ OrderItemsTest.sku%TYPE;
	 
 BEGIN
     item_id_ := 10000;
     sku_ := 'PRODSKU_';
     FOR counter IN 1..20
         LOOP
            INSERT INTO OrderItemsTest (item_id, sku)
             VALUES (counter + item_id_, sku_ || 10+counter);
         END LOOP;
 END;
 $$
 
DELETE from OrderItemsTest;