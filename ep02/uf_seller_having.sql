-- Estados mais importantes, que tem mais de 10 vendedores
SELECT
    seller_state,
    COUNT(seller_id) AS 'qtde_vendedores'

FROM tb_sellers
-- "where" serve p/ filtrar os dados da tabela configurada anteriormente no FROM
-- Neste caso, tb_sellers.

-- ANTES DA OPERAÇÃO DE AGREGAÇÃO ou AGRUPAMENTO
GROUP BY seller_state
-- ANTES DA OPERAÇÃO DE AGREGAÇÃO ou AGRUPAMENTO

-- Campo de agregação
-- Having sempre depois do "GROUP BY"
-- Assim, não precisa usar sub-query.
HAVING COUNT(seller_id) > 10
