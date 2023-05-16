CREATE VIEW `quantidade_de_vendas` AS 

select sum(vp.quantidade) as Quant_vendas

from vendas_has_produto vp ;


