SELECT
    product_category_name,
    COUNT(*) AS "qtde_produtos",
    MAX(product_weight_g) AS "maior_peso",
    MIN(product_weight_g) AS "menor_peso",
    AVG(product_weight_g) AS "avg_peso"

FROM tb_products

WHERE
    product_category_name IS NOT NULL
    AND product_category_name != 'alimentos'
    AND product_category_name <> 'agro_industria_e_comercio'
    -- Os operadores "IS NOT", "!=" e "<>" tem o mesmo significado aqui.

GROUP BY product_category_name
