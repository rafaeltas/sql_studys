SELECT DISTINCT
-- CASE WHEN é o "IF" DO SQL
    CASE
        WHEN product_category_name IS NULL THEN 'outros'
        ELSE product_category_name
    END AS categoria_fillna

FROM tb_products

ORDER BY 1
