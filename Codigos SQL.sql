create database db_academia
go
use db_academia
go
create table cliente (
c_id int primary key identity,
c_nome varchar(60) not null,
c_cpf varchar(15) not null,
c_endereco varchar(100) not null,
c_telefone varchar (15) not null,
c_email varchar(50),
c_RG varchar(50)
)
go
Insert into cliente values ('MARCELO PEDRO', '11366765', 'RUA DOS PALMARES, 135', '962938546', 'MPEDRO@HOTMAIL.COM','7463637829236')
go
create table funcionario (
f_id int primary key identity,
f_nome varchar(60) not null,
f_cpf varchar(15) not null,
f_endereco varchar(100) not null,
f_telefone varchar (15) not null,
f_email varchar(50),
f_RG varchar(50)
)
go
insert into funcionario values ('GUSTAVgh', '455xxx65555','AVENIDA BARILOCHE, 132','962938325','GUSTAVOxxx@Lxxx.COM','387574517')
GO
create table valor_mensalida (
valor int
)
go
Create table mensalidade (
M_c_id int,
valor decimal(5,2),
data_pagamento smalldatetime,
data_final smalldatetime,
foreign key(M_c_id) references cliente(c_id)
)

go
create table entrada_saida (
es_c_id int primary key,
es_status bit,
data_entrada smalldatetime
)
go
create table logar (
l_id int primary key identity,
l_id_func int,
l_usuario varchar(50) not null,
l_senha varchar(30) not null,
l_tipo bit not null,
foreign key(l_id_func) references funcionario(f_id)
)
go
insert into logar(l_id_func,l_usuario,l_senha,l_tipo) values (1,'admin','adminacademia',1)
GO
create table logsistema (
ls_data smalldatetime,
ls_func int,
ls_tabela varchar(50),
ls_obs varchar(60),
foreign key(ls_func) references logar(l_id)
)
go
insert into logsistema values (GETDATE(),1,'logar','Inserido registro na tabela') 
insert into logsistema values (GETDATE(),1,'funcionario','Inserido registro na tabela')
go
create table estoque (
e_id int primary key identity,
e_titulo varchar(100),
e_quantidade int,
e_local_imagem varchar(200) 
)
go
INSERT INTO ESTOQUE VALUES('WHEY PROTEIN', 1,'c:/ProjetoTCC/Imagens/produto1.jpg')
INSERT INTO ESTOQUE VALUES('CREATINA', 0,'c:/ProjetoTCC/Imagens/produtor2.png')
INSERT INTO ESTOQUE VALUES('SUPLEMENTO BATATA DOCE', 3,'c:/ProjetoTCC/Imagens/produto3.jpg')
INSERT INTO ESTOQUE VALUES('MOCHILA EVERLAST', 2,'c:/ProjetoTCC/Imagens/produto4.jpg')
INSERT INTO ESTOQUE VALUES('CAMISA VEM MONSTRO!', 2,'c:/ProjetoTCC/Imagens/produto5.jpg')
