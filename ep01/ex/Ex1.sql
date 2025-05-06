-- Ex1: Quantos produtos temos da categoria 'artes'?
-- select * from tb_products
select count(product_category_name) as "Número de produtos da categoria Artes"
from "tb_products"
where product_category_name = 'artes'
