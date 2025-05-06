-- Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?
select count(*) as 'Produtos com menos de 1L'
from "tb_products"
where
    product_weight_g < 1000
    and product_category_name = 'beleza_saude'
