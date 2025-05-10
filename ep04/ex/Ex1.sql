-- ### Ex1
-- Qual o valor total de receita gerada total de cada estado?
-- Considere a base completa, com apenas pedidos entregues

SELECT
    t2.seller_id,
    t3.seller_state

FROM tb_orders AS t1

LEFT JOIN tb_order_items AS t2
    ON t1.order_id = t2.order_id

LEFT JOIN tb_sellers AS t3
    ON t2.seller_id = t3.seller_id

WHERE
    t1.order_approved_at < '2018-01-01'
    AND t1.order_status = 'delivered'

GROUP BY t2.seller_id, t3.seller_state

HAVING MAX(CASE
    WHEN STRFTIME('%Y-%M', t1.order_approved_at) = '2017-12' THEN 1
    ELSE 0
END) = 0
