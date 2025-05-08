-- Estados mais importantes, que tem mais de 10 vendedores
SELECT
    seller_state,
    COUNT(seller_id) AS 'qtde_vendedores'

FROM tb_sellers
-- "where" serve p/ filtrar os dados da tabela configurada anteriormente no FROM
-- Neste caso, tb_sellers.

-- filtro pré agg(agregação)
WHERE seller_state IN ('SP', 'RJ', 'PR')

-- ANTES DA OPERAÇÃO DE AGREGAÇÃO ou AGRUPAMENTO
GROUP BY seller_state
-- ANTES DA OPERAÇÃO DE AGREGAÇÃO ou AGRUPAMENTO

-- Campo de agregação
-- Having sempre depois do "GROUP BY"
-- Assim, não precisa usar sub-query.

-- filtro pós agregação
HAVING COUNT(seller_id) > 10
