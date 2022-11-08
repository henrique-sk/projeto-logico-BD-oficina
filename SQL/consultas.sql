-- Quantidade de clientes
select count(*) from cliente;

-- mostra o detalhamento das ordens de serviço por cliente
select * from cliente c, ordemServico o where c.idCliente = idOrdemCliente;

-- mostra status das OS por cliente
select nome as cliente, idOrdemServico as OS, statusOS as Status
		from cliente c, ordemServico o where c.idCliente = idOrdemCliente;

-- mostra quantas OS existem
select count(*) from cliente c, ordemServico o where c.idCliente = idOrdemCliente;

-- mostra as OS e detalhamento dos dados dos clientes
select * from cliente left outer join ordemServico on idCliente = idOrdemCliente;

-- mostra as ordens associadas a cada serviço
select * from cliente c 
				inner join ordemServico o on c.idCliente = o.idOrdemCliente
                inner join pedido p on p.idpCliente = o.idOrdemCliente
		group by idCliente;

-- mostra quantas ordens de serviço por cliente
select c.idCliente, nome, count(*) as QtdOS from cliente c 
				inner join ordemServico o on c.idCliente = o.idOrdemCliente
		group by idCliente;