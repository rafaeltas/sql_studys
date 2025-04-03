-- Ex2: Quantos produtos tem mais de 5 litros?
-- utilidades_domesticas
SELECT count(*),
        count(distinct product_id)
-- SELECT product_id, product_category_name, product_weight_g
FROM tb_products

WHERE product_length_cm * product_height_cm * product_width_cm/1000 > 5
