-- ### Ex1
-- Qual o valor total de receita gerada total de cada estado?
-- Considere a base completa, com apenas pedidos entregues
SELECT
    t2.customer_state,
    SUM(t3.price) AS total_receita_cliente,
    ROUND(SUM(t3.price) / COUNT(DISTINCT t1.customer_id), 2)
        AS avg_receita_cliente

FROM tb_orders AS t1

LEFT JOIN tb_customers AS t2
    ON t1.customer_id = t2.customer_id

LEFT JOIN tb_order_items AS t3
    ON t1.order_id = t3.order_id

WHERE t1.order_status = 'delivered'

GROUP BY t2.customer_state
