use ecommerce;

-- inserindo valores na tabela clientes
insert into clients (FNome, Minit, Lname, CPF, Address, BirthDate) 
			  values ('Lucas', 'V', 'Araujo', 12345678911, 'rua 1, 1 - bairro 1 - São Paulo/SP', '1990-04-15'),
					 ('Diego', 'D', 'Venancio', 12345678912, 'rua 2, 2 - bairro 2 - São Paulo/SP', '1992-06-19'),
                     ('Maria', 'O', 'Castro', 12345678913, 'rua 3, 3 - bairro 3 - São Paulo/SP', '1964-12-05'),
                     ('Luiz', 'V', 'Araujo', 12345678914, 'rua 4, 4 - bairro 4 - São Paulo/SP', '1968-05-07'),
                     ('Alice', 'S', 'Araujo', 12345678915, 'rua 5, 5 - bairro 5 - São Paulo/SP', '2016-09-10'),
                     ('Mayara', 'N', 'Silva', 12345678916, 'rua 6, 6 - bairro 6 - São Paulo/SP', '1988-09-09');

-- consultando os valores inseridos na tabela clientes                    
select * from clients;
                     
-- inserindo valores na tabela produtos
insert into product (Pname, classification_kids, category, descricao, valor, avaliacao, size)
			  values ('Celular', default, 'Eletrônico', 'Aparelho muito bom com 128gb', 1999.99, 6, '12x8x2'),
					 ('HotWheels', true, 'Brinquedos', 'Autorama HotWheels', 299.99, 7, null),
                     ('Blusa', default, 'Vestimenta', 'Moletom do DeadFish', 99.99, 8, null),
                     ('Whey', default, 'Alimentos', '25g de proteína por dose', 89.99, 9, null),
                     ('Sofá', default, 'Móveis', 'Reclinável e retrátil', 1989.99, 10, '4x5x3');
                     
-- consultando os valores inseridos na tabela produtos                
select * from product;

-- inserindo valores na tabela pedidos
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash)
			 values (1, default, 'Foi entregue na trasnportadora', 20, default),
					(1, default, 'Aguardando o pagamento', 30, default),
                    (1, default, 'Objeto em trânsito para o cliente', 40, default),
                    (1, default, 'Objeto entregue para o cliente', 50, default),
                    (2, default, 'Foi entregue na trasnportadora', 20, default),
                    (2, default, 'Aguardando o pagamento', 30, default),
                    (2, default, 'Objeto em trânsito para o cliente', 40, default),
                    (2, default, 'Objeto entregue para o cliente', 50, default),
                    (3, default, 'Foi entregue na trasnportadora', 20, default),
                    (3, default, 'Objeto em trânsito para o cliente', 40, default),
                    (3, default, 'Objeto entregue para o cliente', 50, default),
                    (4, default, 'Aguardando o pagamento', 30, default),
                    (4, default, 'Foi entregue na trasnportadora', 20, default),
                    (5, default, 'Objeto em trânsito para o cliente', 40, default),
                    (6, default, 'Objeto entregue para o cliente', 50, default);
                    
-- consultando os valores inseridos na tabela pedidos                
select * from orders;

-- consultando os valores inseridos na tabela estoquesProdutos
insert into productStorage (quantity, storageLocation)
			values (1, 'Recife'), 
				   (2, 'Carpina'), 
                   (3, 'Palmares'), 
                   (4, 'Caruaru'), 
                   (5, 'Serra Talhada');

-- consultando os valores inseridos na tabela estoquesProdutos               
select * from productStorage;

-- inserindo valores na tabela pedidos
insert into supplier (CNPJ, socialName, contact)
			values ('123456789323451', 'Brinquedos Diamante', '11911321111'),
				   ('123456789123452', 'Suplementos Shape', '11922269322'),
                   ('123234789123453', 'Móveis dos Sonhos', '11922269366'),
                   ('123456789123454', 'Eletrônicos HighTech', '11944444245'),
                   ('123456789123455', 'Moda Atual', '11936455555');
                   
-- consultando os valores inseridos na tabela fornecedores              
select * from supplier;

-- inserindo valores na tabela vendedores
insert into seller (socialName, CNPJ, CPF, location, tradingName,contact)
			values ('Brinquedos Master','123456789123456', '98765432191', 'São Paulo', 'Brinquedos','99999999'),
				   ('Suplementos Giga','123456789123457', '98765432192', 'Minas Gerais', 'Suplementos','88888888'),
                   ('EletroMóveis','123456789123458', '98765432193', 'Bahia', 'Móveis','777777777'),
                   ('EletroEletrônicos','123456789123459', '98765432194', 'Rio Grande do Sul', 'Eletrônicos','6666666666'),
                   ('MaisModa','123456789123450', '98765432195', 'Rio de Janeiro', 'Moda','555555555');
                   
-- consultando os valores inseridos na tabela vendedores              
select * from seller;

-- inserindo valores na tabela produtosVendedores
insert into productSeller (idPseller, idProduct, quantity)
			values (1, 2, 10),				
                   (2, 4, 7),
                   (3, 5, 2),
                   (4, 1, 6),
                   (5, 3, 10);

-- consultando os valores inseridos na tabela produtosVendedores             
select * from productSeller;

-- inserindo valores na tabela produtosPedidos
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
			values (1, 1, 1, default),
				   (1, 4, 1, default),
                   (2, 5, 1, 'Sem estoque'),
                   (3, 10, 1, default),
                   (4, 3, 1, 'Sem estoque'),
                   (5, 7, 1, default);

-- consultando os valores inseridos na tabela produtosPedidos             
select * from productOrder;
                   
-- inserindo valores na tabela estoquesLocalidades
insert into storageLocation (idLproduct, idLstorage, location)
			values (1, 2, 'São Paulo'),				
                   (2, 4, 'Minas Gerais'),
                   (3, 5, 'Bahia'),
                   (4, 1, 'Rio Grande do Sul'),
                   (5, 3, 'Rio de Janeiro');

-- consultando os valores inseridos na tabela estoquesLocalidades             
select * from storageLocation;                    
                    
-- inserindo valores na tabela produtosFornecedores
insert into productSupplier (idPsSupplier, idPsProduct, quantity)
			values (1, 4, 10),				
                   (2, 1, 7),
                   (3, 5, 2),
                   (4, 2, 6),
                   (5, 3, 10);

-- consultando os valores inseridos na tabela produtosFornecedores             
select * from productSupplier;