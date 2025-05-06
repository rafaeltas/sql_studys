-- Ex3:w Crie uma coluna nova que contenha a informação de volume em m3

select (product_width_cm * product_height_cm * product_length_cm) / 100
    as 'volume m3'
from "tb_products"
