CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mercado`.`total_de_vendas_por_produto` AS
    SELECT 
        `p`.`idproduto` AS `Id_Produto`,
        `p`.`descricao` AS `Descricao`,
        SUM(`vp`.`quantidade`) AS `Total_Itens_vendidos`
    FROM
        (`mercado`.`vendas_has_produto` `vp`
        JOIN `mercado`.`produto` `p` ON ((`vp`.`idproduto` = `p`.`idproduto`)))
    GROUP BY `p`.`idproduto`