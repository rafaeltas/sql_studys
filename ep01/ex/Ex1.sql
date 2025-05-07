-- Ex1: Quantos produtos temos da categoria 'artes'?
-- select * from tb_products
-- select count(product_category_name)
-- as 'Número de produtos da categoria Artes' 
-- from "tb_products"
-- where product_category_name = 'artes'

-- Correção
-- select count(*) as 'Número_de_Produtos' -- IDENTIFICADOR SEM ESPAÇOS

-- Uso do operador "distinct"
-------------------------------
-- select count(distinct product_id)
--
-- from tb_products
--
-- where product_category_name = 'artes'

-------------------------------
select
    count(*) as 'qtde_linhas',
    count(product_id) as 'qtde_produtos',
    count(distinct product_id) as 'qtde_produtos_distintos',
    count(distinct product_category_name) as 'qtde_categorias_distintas'

from tb_products

where product_category_name = 'artes'
