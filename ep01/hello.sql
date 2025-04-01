-- Bebes acima de 1 foto
-- ou perfumaria acima de 5

SELECT t1.product_id, t1.product_photos_qty, t1.product_category_name 

FROM tb_products as t1

WHERE ( product_category_name = 'bebes' and product_photos_qty > 2)
or (t1.product_category_name = 'perfumaria' and t1.product_photos_qty > 5) 
