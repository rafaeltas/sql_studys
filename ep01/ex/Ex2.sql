-- Ex2: Quantos produtos tem mais de 5 litros?
select count(*) from "tb_products"
where product_weight_g > 5000
