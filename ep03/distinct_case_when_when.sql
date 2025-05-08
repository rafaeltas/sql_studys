SELECT DISTINCT
    CASE
        WHEN product_category_name IS NULL THEN 'outros'
        -- não precisa abrir outro case para abrir um novo "WHEN".
        -- Merge da categoria alimentos:
        WHEN
            product_category_name = 'alimentos'-- Mais perfomático
            OR product_category_name = 'alimentos_bebidas' THEN 'alimentos'
            -- Merge da categoria artes:
        WHEN
            product_category_name IN ('artes', 'artes_e_artesanato') THEN 'artes'

        WHEN product_category_name LIKE '%artigos%' THEN 'artigos'
        -- Tendencia a ser mais pesado ou menos perfomático.
        -- isso porque ele tem que "ler" o conteúdo não a referencia de memória.

        ELSE product_category_name
    END AS categoria_fillna

FROM tb_products

ORDER BY categoria_fillna
