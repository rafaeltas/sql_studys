-- Ex1: Quantos produtos temos da categoria 'artes'?
-- SELECT *
-- conta quantas linhas foram retornadas
-- "distinct" é usado para garantir a contagem de itens distintos

select
    count(*) as qtde_linhas,
    count(product_id) as qtde_produtos,
    count(distinct product_id) as qtde_produtos_distintos,
    count(distinct product_category_name) as qtde_categorias_distintos

from tb_products

where product_category_name = 'artes'