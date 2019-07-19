#By Yure Pablo em 12/03/2018
#Criação de Tabelas

create database estacionamento;

use estacionamento;

create table Cliente (
cpf int unsigned not null auto_increment ,
nome varchar(60),
dtNasc date,

constraint pk_Clliente primary key (cpf));

create table Modelo (
codMod int unsigned not null auto_increment,
Desc2 varchar(40),

constraint pk_Modelo primary key (codMod));

create table Veiculo (
placa varchar(8) not null,
Modelo_codMod int unsigned not null ,
Cliente_cpf int unsigned not null ,
cor varchar(20) ,

constraint pk_Veiculo primary key (placa),
constraint fk_Veiculo foreign key (Modelo_codMod) references Modelo(codMod) on delete restrict on update cascade,
constraint fk2_Veiculo foreign key (Cliente_cpf) references Cliente(cpf) on delete restrict on update cascade) engine = InnoDB ;

create table Patio (
num int unsigned not null auto_increment, 
ender varchar(40) not null, 
capacidade int unsigned not null,

constraint pk_Patio primary key (num));

create table Estaciona (
cod int unsigned not null auto_increment, 
Patio_num int unsigned not null , 
Veiculo_placa varchar(8) not null, 
dtEntrada varchar(10) not null, 
dtSaida varchar(10) not null,
hsEntrada varchar(10) not null, 
hsSaida varchar(10) not null,

constraint pk_Estaciona primary key (cod), 
constraint fk_Estaciona foreign key (Patio_num) references Patio(num) on delete restrict on update cascade,
constraint fk2_Estaciona foreign key (Veiculo_placa) references Veiculo(placa) on delete restrict on update cascade) engine = innodb;

