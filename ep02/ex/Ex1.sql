-- Ex1
-- Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria
SELECT
    product_category_name,
    AVG(product_description_lenght) AS 'avg_lenght',
    MAX(product_description_lenght) AS 'max_lenght',
    MIN(product_description_lenght) AS 'min_lenght'
FROM tb_products
-- product_description_lenght

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

LIMIT 10
