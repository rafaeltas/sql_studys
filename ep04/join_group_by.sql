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

GROUP BY t2.product_category_name

ORDER BY COUNT(*) / CAST(COUNT(DISTINCT t1.order_id) AS FLOAT) DESC

LIMIT 10
