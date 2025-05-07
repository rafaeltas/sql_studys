-- Ex2:
-- Quantos produtos tem mais de 5 litros?
select
    count(*) as 'qtde_linhas',
    count(distinct product_id) as 'qtde_itens_distintos'

from "tb_products"

where product_width_cm * product_height_cm * product_length_cm / 1000 > 5
