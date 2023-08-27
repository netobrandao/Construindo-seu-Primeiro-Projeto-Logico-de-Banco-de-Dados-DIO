-- criação do banco de dados para um E-commerce 
create database ecommerce;
use ecommerce;

-- criar tabela cliente
create table clients(
	idClient int not null auto_increment primary key,
    FNome varchar(10) not null,
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(45),
    BirthDate  date not null,
    constraint unique_cpf_cliente unique(CPF) 
);
alter table clients auto_increment=1;

-- criar tabela produto
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10) not null,
    classification_kids bool default false,
    category enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') not null,
	descricao varchar(255),
    valor float not null,
    avaliacao float not null default 0,
    size varchar(10)
);

alter table product auto_increment=1;

-- criar tabela pedido
create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado', 'Em processamento', 'Enviado', 'Entregue') default 'Em processamento',
    orderDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    constraint fk_orders_clients foreign key (idOrderClient) references clients(idClient)
);

alter table orders auto_increment=1;

-- criar tabela estoque
create table productStorage(
	idProdStorage int auto_increment primary key,
    storageLocation varchar(255),
    quantity int default 0 
    );
    
    alter table productStorage auto_increment=1;

-- criar tabela fornecedor
create table supplier(
	idSupplier int auto_increment primary key,
    CNPJ char(15) not null,
    socialName varchar(255) not null,
    contact char(11) not null,
    constraint unique_cnpj_supplier unique (CNPJ),
    constraint unique_socialName_supplier unique (socialName)
);

    alter table supplier auto_increment=1;

-- criar tabela vendedor
create table seller(
	idSeller int auto_increment primary key,
    socialName varchar(45) not null,
    CNPJ char(15),
    CPF char(11),
    tradingName varchar(45),
    location varchar(255),
    contact char(11) not null,
    constraint unique_socialName_vendedor unique (socialName),
    constraint unique_cnpj_seller unique (CNPJ),
    constraint unique_cpf_seller unique (CPF)
);

    alter table seller auto_increment=1;

-- criar tabela Produto / Vendedor
create table productSeller(
	idPseller int,
    idProduct int,
    quantity int default 1,
    primary key (idPSeller, idProduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idProduct) references product(idProduct)
);

-- criar tabela Produto / Pedido
create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)
);
-- criar tabela Estoque / Localidade
create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idProdStorage)
);
-- criar tabela Produto / Fornecedor
create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier,idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
	constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);
show databases;