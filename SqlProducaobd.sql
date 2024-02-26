create database producaobd

go

use producaobd
go

-- Criando as tabelas
create table fabricante(
cod_fabricante smallint primary key identity(1,1),
nome_fabricante varchar(30)
);

create table produto(
cod_produto int primary key identity(1,1),
nome_produto varchar(30),
cod_fabricante smallint,
foreign key(cod_fabricante) references fabricante(cod_fabricante)
);

create table lote(
num_lote int primary key identity(1,1),
data_validade date,
preco_unitario decimal(10,2),
quantidade smallint DEFAULT 100,
valor_lote decimal(10,2),
cod_produto int,
foreign key(cod_produto) references produto(cod_produto)
);


-- Inserindo dados


-- Inserindo dados na tabela Fabricante
INSERT INTO fabricante (nome_fabricante) VALUES
('Clear'),
('Rexona'),
('Jhonson & Jhonson'),
('Coleston');

-- Inserindo dados na tabela Produto
INSERT INTO produto (nome_produto, cod_fabricante) VALUES
('Shampoo Clear', 1),
('Desodorante Rexona', 2),
('Sabonete Jhonson & Jhonson', 3),
('Tintura Coleston', 4),
('Condicionador Clear', 1),
('Desodorante Jhonson & Jhonson', 3),
('Desodorante Rexona Clinical', 2),
('Tintura Coleston Supreme', 4),
('Shampoo Clear Anticaspa', 1);


