-- Ex3.
-- Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.
-- Considere apenas os objetos que tenham a descrição maior que 100.

SELECT
    product_category_name,
    product_description_lenght,
    AVG(product_name_lenght) AS 'avg_name_lenght',
    MAX(product_name_lenght) AS 'max_name_lenght',
    MIN(product_name_lenght) AS 'min_name_lenght'
FROM tb_products

WHERE
    product_category_name IS NOT NULL
    AND product_description_lenght > 100

GROUP BY product_category_name
