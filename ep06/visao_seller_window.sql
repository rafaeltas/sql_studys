-- Objetivo
-- Qual o produto mais caro que o seller já vendeu?
-- Considere pedidos entregres

WITH tb_seller_product AS (
    SELECT
        t2.seller_id,
        t2.product_id,
        COUNT(*) AS qtde_produtos,
        SUM(t2.price) AS receita_produto

    FROM tb_orders AS t1

    LEFT JOIN tb_order_items AS t2
        ON t1.order_id = t2.order_id

    WHERE t1.order_status = 'delivered'

    GROUP BY
        t2.seller_id,
        t2.product_id

    ORDER BY t2.seller_id
),

tb_seller_sort AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY seller_id
            ORDER BY qtde_produtos DESC, receita_produto DESC
        ) AS order_qtde
    FROM tb_seller_product
)

SELECT
    seller_id,
    product_id,
    qtde_produtos

FROM tb_seller_sort

WHERE order_qtde <= 5
