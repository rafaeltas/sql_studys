SELECT DISTINCT
    CASE
        WHEN product_category_name IS NULL THEN 'outros'
        -- não precisa abrir outro case para abrir um novo "WHEN".
        -- Merge da categoria alimentos:
        WHEN
            product_category_name = 'alimentos'
            OR product_category_name = 'alimentos_bebidas' THEN 'alimentos'
        -- Merge da categoria artes:
        WHEN
            product_category_name = 'artes'
            OR product_category_name = 'artes_e_artesanato' THEN 'artes'
        ELSE product_category_name
    END AS categoria_fillna

FROM tb_products

ORDER BY 1
