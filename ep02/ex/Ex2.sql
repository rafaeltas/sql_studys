-- Ex2.
-- Faça uma query que apresente
-- o tamanho médio, máximo e mínimo do nome do objeto por categoria
SELECT
    product_category_name,
    AVG(product_name_lenght) AS 'avg_name_lenght',
    MAX(product_name_lenght) AS 'max_name_lenght',
    MIN(product_name_lenght) AS 'min_name_lenght'
FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

LIMIT 10
