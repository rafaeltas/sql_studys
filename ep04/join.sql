-- Qual a receita de cada categoria de produtos?
-- e o total de vendas?
-- em unidade e em pedidos?

SELECT
    t1.order_id,
    t1.order_item_id,
    t1.product_id,
    t2.product_category_name,
    t1.price

FROM tb_order_items AS t1

LEFT JOIN tb_products AS t2
    ON t1.product_id = t2.product_id
