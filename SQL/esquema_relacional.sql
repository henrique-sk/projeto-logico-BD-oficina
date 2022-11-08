create database if not exists oficina;
use oficina;

create table cliente(
	idCliente int auto_increment primary key,
    nome varchar(100) not null,
    cpf char(11) unique not null,
    contato char(11)
);

alter table cliente auto_increment=1;

create table veiculo(
	idVeiculo int auto_increment primary key,
    idVcliente int,
    marca varchar(45) not null,
    modelo varchar(45) not null,
    placa char(7) unique not null,
    constraint fk_cliente_veiculo foreign key (idVcliente) references cliente(idCliente)
		on update cascade
);

-- alter table veiculo auto_increment=1;

create table pedido (
	idPedido int auto_increment primary key,
    idpCliente int,
    servico enum('Conserto', 'Revisão') default 'Revisão',
    descricao varchar(255),
    dataSolicitacao char(10) not null,
    constraint fk_cliente_pedido foreign key (idpCliente) references cliente(idCliente)
		on update cascade
);

-- alter table pedido auto_increment=1;

create table mecanico(
	idMecanico int auto_increment primary key,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    especialidade varchar(45) not null
);

-- alter table mecanico auto_increment=1;

create table analisePedido (
	idAPedido int,
    idAMecanico int,
    primary key (idAPedido, idAMecanico),
    constraint fk_analise_pedido_pedido foreign key (idAPedido) references pedido(idPedido),
    constraint fk_analise_pedido_mecanico foreign key (idAMecanico) references mecanico(idMecanico)
);

create table ordemServico (
	idOrdemServico int auto_increment primary key,
    idOrdemPedido int,
    idOrdemCliente int,
    statusOS enum('Em análise', 'Em andamento', 'Finalizado') default 'Em análise',
    dataEmissao char(10) not null,
    dataEntrega char(10) not null,
    valor float,
    constraint fk_ordem_pedido foreign key (idOrdemPedido) references pedido(idPedido)
		on update cascade,
	constraint fk_ordem_cliente foreign key (idOrdemCliente) references cliente(idCliente)
		on update cascade
);

-- alter table ordemServico auto_increment=1;

create table servico (
	idServico int auto_increment primary key,
    idOServico int,
    tipo varchar(45) not null,
    valor float not null,
    constraint fk_ordem_servico foreign key (idOServico) references ordemServico(idOrdemServico)
		on update cascade
);

-- alter table servico auto_increment=1;

create table peca (
	idPeca int auto_increment primary key,
    idPServico int,
    nome varchar(45) not null,
    valor float not null,
    constraint fk_ordem_peca foreign key (idPServico) references ordemServico(idOrdemServico)
		on update cascade
);

-- alter table peca auto_increment=1;

show tables;
show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'oficina';