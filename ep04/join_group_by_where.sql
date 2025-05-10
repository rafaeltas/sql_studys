-- Considerando as vendas de 2017 e pedido entregues
-- Qual a receita de cada categoria de produtos?
-- e o total de vendas?
-- em unidade e em pedidos?

SELECT
    COALESCE(t2.product_category_name, 'outros') AS nome_categoria,
    SUM(t1.price) AS receita,
    COUNT(*) AS total_itens_vendidos,
    COUNT(DISTINCT t1.order_id) AS qtde_de_pedidos,
    ROUND(COUNT(*) / CAST(COUNT(DISTINCT t1.order_id) AS FLOAT), 2)
        AS avg_itens_por_pedido

FROM tb_order_items AS t1

LEFT JOIN tb_products AS t2
    ON t1.product_id = t2.product_id

LEFT JOIN tb_orders AS t3
    ON t1.order_id = t3.order_id

WHERE
    t3.order_status = 'delivered'
    -- AND YEAR(t3.order_approved_at) = 2017 -- Sqlite3 não tem YEAR.
    AND CAST(STRFTIME('%Y', t3.order_approved_at) AS INT) = 2017
    -- CAST(<> AS INT) converte para integer o valor data.

GROUP BY t2.product_category_name
ORDER BY COUNT(*) / CAST(COUNT(DISTINCT t1.order_id) AS FLOAT) DESC

LIMIT 10
