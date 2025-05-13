-- Tempo entre vendas dos seller
-- apenas pedidos entregues

WITH tb_seller_order AS (
    SELECT
        t1.order_id,
        DATE(t1.order_approved_at) AS data_venda,
        t2.seller_id

    FROM tb_orders AS t1

    LEFT JOIN tb_order_items AS t2
        ON t1.order_id = t2.order_id

    WHERE order_status = 'delivered'
),
tb_seller_order_sort AS (
    SELECT *,
      ROW_NUMBER() OVER (PARTITION BY seller_id, data_venda) as date_seller_order
    FROM tb_seller_order
)

SELECT *

FROM tb_seller_order_sort

WHERE date_seller_order = 1
