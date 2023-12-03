CREATE DATABASE banco_de_dados_PI3;

USE banco_de_dados_PI3;

CREATE TABLE produto(
id int not null auto_increment,
nome varchar(200) not null,
tipo varchar(200) not null,
descrição varchar(200),
nome_da_empresa varchar(200) not null,
preço real not null,
código varchar(200) not null,
primary key(id),
unique(código)
);

CREATE TABLE cliente(
id int not null auto_increment,
nome varchar(200) not null,
idade int not null,
cpf varchar(200) not null,
endereço varchar(200),
telefone varchar(100),
primary key(id),
unique(cpf)
);

CREATE TABLE pet(
id int not null auto_increment,
nome varchar(200),
espécie varchar(200) not null,
raça varchar(200) not null,
sexo varchar(10),
primary key(id)
);

CREATE TABLE consultas(
id int not null auto_increment,
pet_id int not null,
cliente_id int not null,
data_da_consulta date,
doença varchar(200),
tratamento varchar(200) not null,
valor_total real not null,
primary key(id),
foreign key(pet_id) references pet(id),
foreign key(cliente_id) references cliente(id)
);