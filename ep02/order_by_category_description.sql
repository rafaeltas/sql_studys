-- Ex4.
-- Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria.
-- Considere apenas os objetos que tenham a descrição maior que 100. Exiba apenas as categorias com tamanho médio
-- de descrição do objeto maior que 500 caracteres.
SELECT
    product_category_name, -- 1
    AVG(product_description_lenght) AS 'avg_description_lenght', -- 2
    AVG(product_name_lenght) AS 'avg_name_lenght', -- 3
    MAX(product_name_lenght) AS 'max_name_lenght',
    MIN(product_name_lenght) AS 'min_name_lenght'
FROM tb_products

WHERE
    product_category_name IS NOT NULL
    AND product_description_lenght > 100

GROUP BY product_category_name

HAVING AVG(product_description_lenght) > 500
-- "Order by" é sempre depois de toda a query
-- ORDER BY 1, 2 ou 3 se refere a ordernar pelas colunas do "SELECT".
-- É RUIM ordernar pelos números das colunas porque NEM TODOS OS BANCOS ACEITAM essa instrução.

-- Para ordernar de forma decrescent colocar "desc" depois da coluna do "order by"
ORDER BY AVG(product_name_lenght) DESC, MIN(product_name_lenght) DESC
