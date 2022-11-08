use oficina;
show tables;

insert into cliente(nome, cpf, contato) values
				('Maria M Silva',123467890, null),
				('Matheus O. Pimentel',987654321, null),
				('Ricardo F. Silva',456789133, null),
				('Julia S. França',789123456, null),
				('Roberta G. Assis',987456313, null),
				('Isabela M. Cruz',654789123, null);
                
insert into veiculo(idVcliente, marca, modelo, placa) values
				(1,'Volkswagen', 'Gol', 'ADF6723'),
                (2,'Fiat', 'Palio', 'GSU3850'),
                (3,'Honda', 'Civic', 'SDT4578'),
                (4,'Fiat', 'Uno', 'HDT4579'),
                (5,'Toyota', 'Corolla', 'HDI4231'),
                (6,'Chevrolet', 'Celta', 'SHJ4856'),
                (6,'Toyota', 'Hilux', 'SOY2548');
                
insert into pedido(idpCliente, servico, descricao, dataSolicitacao) values
				(1,default, 'troca de óleo', '2020-11-05'),
                (2, 'Conserto', 'conserto de motor', '2020-11-06'),
                (3,'Conserto', 'pintura', '2020-11-05'),
                (4,'Conserto', 'troca de pneu', '2020-11-05'),
                (5,'Revisão', 'revisão', '2020-11-07'),
                (6,'Conserto', 'troca farol e para-brisa', '2020-11-07');

insert into mecanico(nome, endereco, especialidade) values
				('João', 'rua silva de prata 29, Carangola - Cidade das flores', 'pintura'),
				('Alcir', 'rua alemeda 289, Centro - Cidade das flores', 'elétrica'),
				('Ricardo', 'avenida alemeda vinha 1009, Centro - Cidade das flores', 'geral'),
				('Julia','rua lareijras 861, Centro - Cidade das flores', 'borracharia'),
				('Roberto','avenidade koller 19, Centro - Cidade das flores', 'geral');

insert into analisePedido(idAPedido, idAMecanico) values
				(1, 3),
                (1, 2),
                (5, 4),
                (2, 1),
                (3, 5),
                (4, 5),
                (4, 3),
                (3, 2),
                (5, 1);

insert into ordemServico(idOrdemPedido, idOrdemCliente, statusOS, dataEmissao, dataEntrega) values
				(1, 3, 'Em andamento', '2020-11-05', '2020-11-10'),
				(5, 6, 'Finalizado', '2020-11-06', '2020-11-11'),
				(6, 4, 'Em análise', '2020-11-04', '2020-11-12'),
				(3, 2, default, '2020-11-07', '2020-11-10'),
				(2, 1, 'Em análise', '2020-11-06', '2020-11-11'),
				(4, 5, default, '2020-11-06', '2020-11-12');

insert into servico (idOServico, tipo, valor) values
				(1,'pintura', 150),
                (2,'troca pneu', 50),
                (3,'revisão básica', 100),
                (4,'troca de óleo', 50),
                (5,'instalação som', 100),
                (6,'reforma bancos', 140);                
                
insert into peca (idPServico, nome, valor) values
				(1,'pneu', 40),
                (2,'para-brisa', 150),
                (3,'tinta', 60),
                (4,'óleo', 30),
                (5,'caixa de som', 100),
                (6,'estofamento', 100);