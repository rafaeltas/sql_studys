-- essa estrutura é igual a todos bancos relacionais
select product_category_name,
    count(*) as qtde_produto,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    avg(product_weight_g) as avg_peso

from tb_products

-- excluindo a categoria "nulos"
where product_category_name is not null
-- Antes de fazer o agrupamento o "where" acima retira a categoria nula.

GROUP BY product_category_name
