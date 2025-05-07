-- Estados mais importantes, que tem mais de 10 vendedores
SELECT *

FROM (
    -- Isso é uma sub query. TeoMeWhy disse que é bom evitar elas, porque:
    -- 1- Não facilita a leitura (tem que ler o código de dentro para fora);
    -- Aumenta o processamento $ da query e não daria para reutilizar o código. 
    SELECT
        seller_state,
        COUNT(seller_id) AS 'qtde_vendedores'

    FROM tb_sellers

    -- WHERE seller_state IN ('SP', 'RJ', 'PR')

    GROUP BY seller_state
)

WHERE qtde_vendedores > 10
