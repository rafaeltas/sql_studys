
SELECT seller_state,
        COUNT(seller_id) as qtde_sellers
-- "qtde_sellers" é o campo de agregação.

FROM tb_sellers

-- WHERE seller_state IN ('SP', 'RJ', 'PR')
-- "WHERE" serve para pegar o que vem da tabela original, tabela raiz (FROM tb_sellers).

GROUP BY seller_state

-- Campo que estamos usando na agregação (SELECT seller_state, COUNT(seller_id) as qtde_sellers)
-- Assim, não precisa de Sub Query
HAVING COUNT(*) > 10
ORDER BY qtde_sellers DESC
