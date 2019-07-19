#By Yure Pablo em 29/01/2018
#Consultas a uma tabela previamente criada

# Obter nome e valor da última compra de todos os clientes. 

SELECT nome AS 'Nome do Cliente', valorultcompra AS 'Valor da Última Compra (R$)' FROM cliente;

# Obter nome, estoque e data de compra de todos os produtos. Ordenar estoque em ordem decrescente.

SELECT nome, estoque, dtcompra FROM produto ORDER BY estoque DESC; 

# Obter o nome, tipo e preço de todos os produtos. Ordenar nomes em ordem ascendente.

SELECT nome, tipo, preco FROM produto ORDER BY nome asc;

# Obter a quantidade total de clientes cadastrados na loja.

SELECT COUNT(codigo) FROM cliente;

# Obter o preço mais alto dos produtos cadastrados na loja.

SELECT MAX(preco) FROM produto;

# Obter o valor médio da última compra dos clientes da loja.

SELECT AVG(valorultcompra) FROM cliente;

# Obter a quantidade total do estoque da loja.

SELECT SUM(estoque) FROM produto;

# Obter o valor da menor compra realizada na loja.

SELECT MIN(valorultcompra) FROM cliente;

# Obter o valor da maior compra realizada em dinheiro

SELECT MAX(valorultcompra) FROM cliente WHERE formapagamento = 3;

# Obter o valor da menor compra realizada por clientes do sexo feminino.

SELECT MIN(valorultcompra) FROM cliente WHERE sexo = "F";

# Obter a quantidade total de flores e plantas existentes no estoque.

SELECT SUM(estoque) FROM produto WHERE tipo = 1 or tipo = 2;

# Obter o número de produtos que não tenham tipo definido.

SELECT COUNT(codigo) FROM produto WHERE tipo is null;

# Obter o número de clientes que ainda não tenham feito compra na floricultura.

SELECT COUNT(codigo) FROM cliente WHERE valorultcompra is null;

# Obter a data da última vez que houve compra de produtos para abastecer a loja.

SELECT MAX(dtcompra) FROM produto; 

# Obter o maior preço dos produtos cujo nome começa com a letra A.

SELECT MAX(preco) FROM produto WHERE nome like "A%";

# Obter a quantidade de clientes do sexo masculino.

SELECT COUNT(codigo) FROM cliente WHERE sexo = "M";

# Obter o menor estoque dentre os produtos que custam mais que 10 reais.

SELECT MIN(estoque) FROM produto WHERE preco>10;

