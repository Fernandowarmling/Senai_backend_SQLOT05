CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `mercado`.`data_venda` AS
    SELECT 
        `v`.`data_venda` AS `data_venda`,
        `p`.`descricao` AS `descricao`
    FROM
        ((`mercado`.`vendas` `v`
        JOIN `mercado`.`vendas_has_produto` `vp` ON ((`v`.`idvenda` = `vp`.`idvenda`)))
        JOIN `mercado`.`produto` `p` ON ((`vp`.`idproduto` = `p`.`idproduto`)))
    ORDER BY `v`.`data_venda` DESC