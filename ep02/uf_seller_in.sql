-- Quantos vendedores tem SP, RJ, PR
SELECT
    seller_state AS 'Estado',
    COUNT(seller_id) AS 'qtde_vendedores'

FROM tb_sellers

WHERE seller_state IN ('SP', 'RJ', 'PR')

GROUP BY seller_state
