#By Yure Pablo em 2018
#Atualiza dados de um berçario

CREATE database bercario;
USE bercario;

CREATE TABLE bebe (
  codigo int(4) unsigned NOT NULL,
  nome varchar(60) NOT NULL,
  nascimento datetime NOT NULL,
  peso float NOT NULL,
  altura float NOT NULL,
  sexo char not null,
  cor int null,
  PRIMARY KEY (codigo)
);

CREATE TABLE pediatra (
    codigo int(2) unsigned not null,
    nome varchar (60) not null,
    especializacao char not null,
    valorHora float not null,
    contrato char not null,
    PRIMARY KEY (codigo)
);

# Aumentar o valor da hora de todos os pediatras em 4%.
update pediatra
set valorHora = valorHora*1.04;

# Alterar para masculino o sexo de todos os bebês nascidos no dia 14 de outubro de 2017.
update bebe
set sexo = "M"
where nascimento = 14/10/2017;

# Diminuir 20g do peso de todos os bebês cuja altura seja menor que 48 cm e cujo sexo seja feminino.
update bebe
set peso = peso - 0.02
where altura < 48 and sexo = "F";

# Aumentar em 10% o peso de todos os bebês que nasceram no mês de outubro de 2017.
update bebe
set peso = peso *1.10
where nascimento between 01/10/2017 and 31/10/2017;

# Alterar para 50 cm a altura de todos os bebês cuja cor seja branca, amarela ou negra.
update bebe
set altura = 0.5
where cor in (1,3,4);

# Deduzir 2,5% do valor da hora de todos os pediatras que não possuem especialização e que não sejam contratados pelo berçário. 
update pediatra
set valorHora = valorHora * 0.975
where especializacao  = "N" and contrato = "N";

# Alterar para 15 de outubro de 2017 a data de nascimento de todos os bebês de cor parda, do sexo masculino, nascidos em 17 de outubro de 2017.
update bebe
set nascimento = 15/10/2017
where cor = 2 and nascimento = 17/10/2017;

# Alterar para contratado pelo berçário todos os pediatras que tenham o último nome “Peixoto”.
update pediatra
set contrato = "S"
where nome like "%Peixoto";

# Alterar para feminino o sexo de todos os bebês negros com peso inferior a 2kg.
update bebe
set sexo = "F"
where cor = 3 and peso < 2;

# Alterar para não contratado pelo berçário, todos os pediatras que não possuem especialização.
update pediatra
set contrato = "N"
where especializacao = "N";

# Excluir todos os bebês que não tenham cor definida.
delete from bebe
where cor is null;

# Excluir todos os pediatras cujo nome comece com a expressão “Jo” e que não sejam contratados pelo berçário.
delete from pediatra
where nome like "Jo%" and contrato = "N";

# Excluir todos os bebês cujo nome comece com a letra “A” e não termine com “Santos”. 
delete from bebe
where nome like "A%" and nome not like "%Santos";

# Excluir todos os bebês que pesam entre 800g e 1kg e 200g e cujo sexo seja feminino.
delete from bebe
where peso between 0.8 and 1.2 and sexo = "F";

# Excluir todos os pediatras não contratados pelo berçário, que não possuem especialização e que ganham mais que 800 reais por hora.
delete from pediatra
where contrato = "N" 
and especializacao = "N" 
and valorHora > 800;

# Excluir todos os bebês que não sejam brancos nem amarelos e que pesem mais de 6kg.
delete from bebe
where cor not in (1,4) 
and peso > 6;

# Excluir todos os pediatras contratados pelo berçário cujo nome não comece com “A”, “B”, “J” ou “M”.
delete from pediatra
where contrato = "S"
and nome not like "A%" 
or nome not like "B%" 
or nome not like "J%" 
or nome not like "M%";

# Excluir todos os bebês nascidos entre setembro e outubro de 2017 que não sejam negros nem do sexo feminino.
delete from bebe
where nascimento between 01/09/2017 and 31/10/2017
and cor != 3
and sexo != "F";
 







