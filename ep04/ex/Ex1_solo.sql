-- ### Ex1
-- Qual o valor total de receita gerada total de cada estado?
-- Considere a base completa, com apenas pedidos entregues
SELECT
    t3.customer_state AS 'estado',
    SUM(t2.payment_value) AS 'receita'

FROM tb_orders AS t1

LEFT JOIN tb_order_payments AS t2
    ON t1.order_id = t2.order_id

LEFT JOIN tb_customers AS t3
    ON t1.customer_id = t3.customer_id

WHERE t1.order_status = 'delivered'

GROUP BY t3.customer_state
ORDER BY SUM(t2.payment_value) DESC
