/*
1) Utilizando o comando ALTER TABLE, adicionar à tabela cliente já criada os seguintes atributos: 
email, cidade, estado, endereço (lembre-se que trata-se de atributo composto)
 */
ALTER TABLE Cliente 
ADD email VARCHAR(50) NOT NULL,
ADD cidade VARCHAR(50) NOT NULL,
ADD estado CHAR(2) NOT NULL,
ADD cep CHAR(8) NOT NULL,
ADD logradouro VARCHAR(50) NOT NULL,
ADD numero INT NOT NULL,
ADD complemento VARCHAR(50);
 
 /*
2) Apagar da Tabela Aluguel o atributo idEquipamento, pois criaremos uma outra tabela para conter tal atributo. Use o comando para dropar colunas para fazer isso.*/

ALTER TABLE Aluguel
DROP FOREIGN KEY fk_Aluguel_Equipamento;

ALTER TABLE Aluguel
DROP COLUMN idEquipamento;
SELECT * from aluguel 

 /*
 
 
2) Criar a tabela associativa AluguelEquipamento com os seguintes atributos:
 
idAluguemEquipamento PK
idAluguel FK
idEquipamento FK
valorUnitario 
valorItem
quantidade
 
Use o novo modelo para inspecionar as propriedades!!!*/

CREATE TABLE AluguelEquipamento(
idAluguelEquipamento INT PRIMARY KEY AUTO_INCREMENT,
idAluguel INT NOT NULL,
idEquipamento INT NOT NULL, 
valorUnitario DECIMAL(10,2) NOT NULL,
valorItem DECIMAL(10,2) NOT NULL,
quantidade INT,
CONSTRAINT fk_AluguelEquipamento_Aluguel FOREIGN KEY (idAluguel)
REFERENCES Aluguel (idAluguel),
CONSTRAINT fk_AluguelEquipamento_Equipamento FOREIGN KEY (idEquipamento)
REFERENCES Equipamento (idEquipamento)
)
/*
 
 
3) Inserir 20 clientes segundo o seguinte critério:
 
Donald, email uol, Santos SP, mora em casa 
Margarida, email uol, São Vicente SP,
Patinhas, email uol, Florianópolis SC, mora em casa 
Huguinho, email gmail, Santos SP,
Luizinho, email gmail, Praia Grande SP,
Zezinho, email gmail, São Vicente SP, mora em casa 
Pardal, email uol, Santos SP, mora em casa 
Zé Carioca, Rio de Janeiro RJ, mora em casa 
Mickey, email hotmail, Recife PE,
Minie,  email gmail, Recife PE,
Pateta,  email gmail, 
Branca de Neve, email hotmail, São Joaquim SC, 
Aladin, email gmail, Belém PA,
Cinderela, email hotmail, Goiania GO, mora em casa 
Mulan , email gmail, Rio das Ostras RJ,
Moana , email gmail, Parati RJ,
Asnésio, email uol, Belo Horizonte MG, 
Maga Patalógica, email gmail, Cubatão SP,
Capitão Boeing, email uol, Manaus AM, mora em casa
Pão Duro Mac Money, email ig, Osasco SP*/

INSERT INTO Cliente (nomeCliente, email, cidade, estado, logradouro, numero, complemento, cep, cpf)
VALUES
('Donald', 'donald@uol.com', 'Santos', 'SP', 'Rua das Gaivotas', 101, 'Mora em casa', '11000000', '55140684802'),
('Margarida', 'margarida@uol.com', 'São Vicente', 'SP', 'Rua das Rosas', 202, '', '11300000', '97242322200'),
('Patinhas', 'patinhas@uol.com', 'Florianópolis', 'SC', 'Av. das Moedas', 1, 'Mora em casa', '88000000', '59135818492'),
('Huguinho', 'huguinho@gmail.com', 'Santos', 'SP', 'Rua dos Patos', 303, '', '11010000', '79060779975'),
('Luizinho', 'luizinho@gmail.com', 'Praia Grande', 'SP', 'Av. dos Surfistas', 404, '', '11700000', '38815425667'),
('Zezinho', 'zezinho@gmail.com', 'São Vicente', 'SP', 'Rua das Conchas', 505, 'Mora em casa', '11310000', '53955878295'),
('Pardal', 'pardal@uol.com', 'Santos', 'SP', 'Rua dos Inventores', 606, 'Mora em casa', '11020000', '75642174649'),
('Zé Carioca', 'zecarioca@uol.com', 'Rio de Janeiro', 'RJ', 'Rua das Araras', 707, 'Mora em casa', '20000000', '29742621802'),
('Mickey', 'mickey@hotmail.com', 'Recife', 'PE', 'Rua dos Ratos', 808, '', '50000000', '63298570915'),
('Minie', 'minie@gmail.com', 'Recife', 'PE', 'Rua das Flores', 909, '', '50010000', '62643401034'),
('Pateta', 'pateta@gmail.com', 'São Paulo', 'SP', 'Av. dos Amigos', 1001, '', '01000000', '09360289639'),
('Branca de Neve', 'brancadeneve@hotmail.com', 'São Joaquim', 'SC', 'Rua das Maçãs', 111, '', '88600000', '78455797770'),
('Aladin', 'aladin@gmail.com', 'Belém', 'PA', 'Rua das Lâmpadas', 222, '', '66000000', '26856224036'),
('Cinderela', 'cinderela@hotmail.com', 'Goiânia', 'GO', 'Rua do Castelo', 333, 'Mora em casa', '74000000', '88398603046'),
('Mulan', 'mulan@gmail.com', 'Rio das Ostras', 'RJ', 'Rua dos Dragões', 444, '', '28890000', '87828385501'),
('Moana', 'moana@gmail.com', 'Parati', 'RJ', 'Av. dos Mares', 555, '', '23970000', '52096551137'),
('Asnésio', 'asnesio@uol.com', 'Belo Horizonte', 'MG', 'Rua dos Burros', 666, '', '30000000', '28600379180'),
('Maga Patalógica', 'maga@gmail.com', 'Cubatão', 'SP', 'Rua das Bruxas', 777, '', '11500000', '85489519150'),
('Capitão Boeing', 'boeing@uol.com', 'Manaus', 'AM', 'Av. dos Céus', 888, 'Mora em casa', '69000000', '09150846000'),
('Pão Duro Mac Money', 'paoduro@ig.com', 'Osasco', 'SP', 'Rua das Moedinhas', 999, '', '06000000', '02027593187');


/*4)Inserir 03 funcionários com dados aleatórios, mas com os seguintes nomes:
Cebolinha,
Cascão, 
Chico Bento*/

INSERT INTO Funcionario (nomeFuncionario, cpf, celular)
VALUES
('Cebolinha', '67654697708', '19912536504'),
('Cascão', '64263039920', '51971808967'),
('Chico Bento', '82308660902', '31955881852');

 
/*5)Inserir os seguintes equipamentos:
 
Cadeira 02 posições - 50 unidades - R$2,00
Cadeira 04 posições - 100 unidades - R$3,50
Guarda Sol P - 40 unidades - R$2,00
Guarda Sol G - 60 unidades - R$3,00
Mesinha - 30 unidades - R$1,50
*/

INSERT INTO equipamento (nomeEquipamento, qtd,valorHora)
VALUES 
('Cadeira 02 posições','50','2.00'),
('Cadeira 04 posições','100','3.50'),
('Guarda Sol P','40','2.00'),
('Guarda Sol G','60','3.00'),
('Mesinha','30','1.50');

SELECT * FROM cliente
ORDER BY idCliente 

UPDATE cliente
SET cidade = 'Manaus' , estado = 'AM'
WHERE idCliente = 71;

SELECT * FROM cliente
ORDER BY idCliente 

DESCRIBE aluguel
DELETE FROM Funcionario
WHERE nomeFuncionario = 'Chico Bento'AND idFuncionario <> 3;

/*
6)Inserir o aluguel de 1 cadeiras 2 posições para o Pateta feita pelo Cebolinha, em 08/12/24. Fazer o update da quantidade retirando uma do estoque. */

INSERT INTO Aluguel (idCliente,idFuncionario,dataHoraRetirada,dataHoraDevolucao,valorAPagar,pago,formaPagamento,qtVezes)
VALUES ((SELECT idCliente FROM Cliente WHERE nomeCliente = 'Pateta'),(SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Cebolinha'),'2024-12-08 09:00:00',NULL,NULL,0,NULL,NULL);


DESCRIBE aluguelequipamento
SELECT * FROM equipamento
DELETE FROM equipamento
WHERE nomeEquipamento = 'Mesinha'AND idEquipamento <> 5;

INSERT INTO AluguelEquipamento (idAluguel,idEquipamento,valorUnitario,valorItem,quantidade)
VALUES ((SELECT idAluguel FROM Aluguel WHERE idCliente = (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Pateta')ORDER BY idAluguel DESC LIMIT 1),(SELECT idEquipamento FROM Equipamento WHERE nomeEquipamento = 'Cadeira 02 posições'),(SELECT valorHora FROM Equipamento WHERE nomeEquipamento = 'Cadeira 02 posições'),(SELECT valorHora FROM Equipamento WHERE nomeEquipamento = 'Cadeira 02 posições') * 1,1);

UPDATE Equipamento
SET qtd = qtd - 1
WHERE nomeEquipamento = 'Cadeira 02 posições';

/*7)Inserir o aluguel de 2 cadeiras 4 posições e um guarda sol G para o Mickey feita pelo Chico Bento, em dez 10/12/24.
Fazer o update da quantidade retirando do estoque. */

INSERT INTO Aluguel (idCliente,idFuncionario,dataHoraRetirada,dataHoraDevolucao,valorAPagar,pago,formaPagamento,qtVezes)
VALUES ((SELECT idCliente FROM Cliente WHERE nomeCliente = 'Mickey'),(SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'),'2024-12-10 09:00:00',NULL,NULL,0,NULL,NULL);

-- Cadeiras 4 posições (2 unidades)
INSERT INTO AluguelEquipamento (idAluguel,idEquipamento,valorUnitario,valorItem,quantidade)
VALUES ((SELECT idAluguel FROM Aluguel WHERE idCliente = (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Mickey')ORDER BY idAluguel DESC LIMIT 1),(SELECT idEquipamento FROM Equipamento WHERE nomeEquipamento = 'Cadeira 04 posições'),(SELECT valorHora FROM Equipamento WHERE nomeEquipamento = 'Cadeira 04 posições'),(SELECT valorHora FROM Equipamento WHERE nomeEquipamento = 'Cadeira 04 posições') * 2,2);

-- Guarda-sol G (1 unidade)
INSERT INTO AluguelEquipamento (idAluguel,idEquipamento,valorUnitario,valorItem,quantidade)
VALUES ((SELECT idAluguel FROM Aluguel WHERE idCliente = (SELECT idCliente FROM Cliente WHERE nomeCliente = 'Mickey')ORDER BY idAluguel DESC LIMIT 1),(SELECT idEquipamento FROM Equipamento WHERE nomeEquipamento = 'Guarda Sol G'),(SELECT valorHora FROM Equipamento WHERE nomeEquipamento = 'Guarda Sol G'),(SELECT valorHora FROM Equipamento WHERE nomeEquipamento = 'Guarda Sol G') * 1,1);

UPDATE Equipamento
SET qtd = qtd - 2
WHERE nomeEquipamento = 'Cadeira 04 posições';

UPDATE Equipamento
SET qtd = qtd - 1
WHERE nomeEquipamento = 'Guarda sol G';

/*8)Inserir o aluguel de 1 guarda sol P para 3 pessoas quaisquer feita pelo Cebolinha, em 27/12/24.
Fazer o update da quantidade retirando do estoque. */

INSERT INTO Aluguel (idCliente,idFuncionario,dataHoraRetirada,dataHoraDevolucao,valorAPagar,pago,formaPagamento,qtVezes)
VALUES
((SELECT idCliente FROM Cliente WHERE nomeCliente = 'Mickey'),(SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Cebolinha'),'2024-12-27 09:00:00',NULL,NULL,0,NULL,NULL),
((SELECT idCliente FROM Cliente WHERE nomeCliente = 'Capitão Boeing'),(SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Cebolinha'),'2024-12-27 09:00:00',NULL,NULL,0,NULL,NULL),
((SELECT idCliente FROM Cliente WHERE nomeCliente = 'Huguinho'),(SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Cebolinha'),'2024-12-27 09:00:00',NULL,NULL,0,NULL,NULL);

INSERT INTO AluguelEquipamento 
(idAluguel, idEquipamento, valorUnitario, valorItem, quantidade)
VALUES 
((SELECT idAluguel FROM Aluguel WHERE idCliente = 69 ORDER BY idAluguel DESC LIMIT 1),3,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 3),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 3) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 79 ORDER BY idAluguel DESC LIMIT 1),3,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 3),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 3) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 64 ORDER BY idAluguel DESC LIMIT 1),3,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 3),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 3) * 1,1);

UPDATE Equipamento
SET qtd = qtd - 3
WHERE nomeEquipamento = 'Guarda sol P';

/*9)Inserir o aluguel de 2 cadeiras 4 posições e um guarda sol G para 6 pessoas aleatórias feitas pelo Chico Bento, em dez 28/12/24. Fazer o update da quantidade retirando do estoque.*/

INSERT INTO Aluguel (idCliente, idFuncionario, dataHoraRetirada, dataHoraDevolucao, valorAPagar, pago, formaPagamento, qtVezes)
VALUES
((SELECT idCliente FROM Cliente WHERE idCliente = 68), (SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'), '2024-12-27 09:00:00', NULL, NULL, 0, NULL, NULL),
((SELECT idCliente FROM Cliente WHERE idCliente = 70), (SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'), '2024-12-27 09:00:00', NULL, NULL, 0, NULL, NULL),
((SELECT idCliente FROM Cliente WHERE idCliente = 71), (SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'), '2024-12-27 09:00:00', NULL, NULL, 0, NULL, NULL),
((SELECT idCliente FROM Cliente WHERE idCliente = 72), (SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'), '2024-12-27 09:00:00', NULL, NULL, 0, NULL, NULL),
((SELECT idCliente FROM Cliente WHERE idCliente = 73), (SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'), '2024-12-27 09:00:00', NULL, NULL, 0, NULL, NULL),
((SELECT idCliente FROM Cliente WHERE idCliente = 74), (SELECT idFuncionario FROM Funcionario WHERE nomeFuncionario = 'Chico Bento'), '2024-12-27 09:00:00', NULL, NULL, 0, NULL, NULL);

DELETE FROM AluguelEquipamento
WHERE idAluguelEquipamento >= 7;

INSERT INTO AluguelEquipamento (idAluguel, idEquipamento, valorUnitario, valorItem, quantidade)
VALUES 
((SELECT idAluguel FROM Aluguel WHERE idCliente = 68 ORDER BY idAluguel DESC LIMIT 1),2,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2) * 1,2),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 70 ORDER BY idAluguel DESC LIMIT 1),2,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2) * 1,2),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 71 ORDER BY idAluguel DESC LIMIT 1),2,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2) * 1,2),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 72 ORDER BY idAluguel DESC LIMIT 1),2,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2) * 1,2),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 73 ORDER BY idAluguel DESC LIMIT 1),2,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2) * 1,2),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 74 ORDER BY idAluguel DESC LIMIT 1),2,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 2) * 1,2);

  
INSERT INTO AluguelEquipamento (idAluguel, idEquipamento, valorUnitario, valorItem, quantidade)
VALUES 
((SELECT idAluguel FROM Aluguel WHERE idCliente = 68 ORDER BY idAluguel DESC LIMIT 1),4,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 70 ORDER BY idAluguel DESC LIMIT 1),4,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 71 ORDER BY idAluguel DESC LIMIT 1),4,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 72 ORDER BY idAluguel DESC LIMIT 1),4,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 73 ORDER BY idAluguel DESC LIMIT 1),4,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4) * 1,1),
((SELECT idAluguel FROM Aluguel WHERE idCliente = 74 ORDER BY idAluguel DESC LIMIT 1),4,(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4),(SELECT valorHora FROM Equipamento WHERE idEquipamento = 4) * 1,1);

UPDATE Equipamento
SET qtd = qtd - 6
WHERE nomeEquipamento = 'Guarda sol G';

UPDATE Equipamento
SET qtd = qtd - 12
WHERE nomeEquipamento = 'Cadeira 04 posições';

/*10)Listar o nome e os contatos de todos os clientes da barraca em ordem alfabética. */

SELECT nomeCliente, email
FROM  cliente
ORDER BY nomeCliente

/*11)Listar o nome e o contato telefônico de todos os funcionários da barraca em ordem alfabética.*/ 

SELECT nomeFuncionario, celular
FROM funcionario
ORDER BY nomeFuncionario

/*12)Listar todos os dados dos aluguéis realizados em ordem de data da mais antiga para a mais nova.*/

SELECT * FROM aluguel
ORDER BY dataHoraRetirada ASC 

/*13)Listar nome, cidade e estado de todos os clientes da baixada santista em ordem alfabética por nome.*/

SELECT nomeCliente, cidade, estado
FROM cliente 
WHERE cidade IN ('Santos', 'São Vicente', 'Praia Grande', 'Guarujá', 'Cubatão', 'Bertioga', 'Mongaguá', 'Itanhaém')
ORDER BY nomeCliente ASC;

/*14)Listar todos os produtos e a quantidade de estoque do produto que tem mais itens para o que tem menos.*/

SELECT nomeEquipamento, qtd FROM equipamento
ORDER BY  qtd DESC;

/*15)Listar o nome, a cidade e o estado de todos os clientes que moram em casa em ordem alfabética.*/

SELECT nomeCliente,cidade, estado
FROM Cliente
WHERE complemento LIKE  '%casa%'
ORDER BY nomeCliente ASC;

/*16)Listar o nome de todos os clientes e o estado daqueles que não vivem no estado de SP.*/

SELECT nomeCliente, estado
FROM Cliente
WHERE estado <> 'SP';

/*17)Listar o nome de todos os clientes que começam com a letra A.*/

SELECT nomeCliente
FROM cliente
WHERE nomeCliente LIKE 'A%'

/*18)Listar todos os dados dos clientes que começam com a letra M e vivam no estado de PE.*/

SELECT * FROM cliente
WHERE nomeCliente LIKE 'M%' AND estado = 'PE'

/*19)Listar apenas as cadeiras e a quantidade que possui em estoque em ordem de quantidade, da que mais possui itens para a que menos possui. */

SELECT nomeEquipamento,qtd
FROM equipamento
WHERE nomeEquipamento LIKE '%Cadeira%' 
ORDER BY qtd DESC;

/*20)Listar todos os dados dos alugueis que ocorreram entre 25/12 e 31/12 de 2024 em ordem de data da mais antiga para a mais nova. */

SELECT * FROM equipamento
WHERE dataHoraRetirada BETWEEN '2024-12-25' AND '2024-12-31'
ORDER BY dataHoraRetirada ASC;


ALTER TABLE Equipamento
ADD CONSTRAINT uq_nomeEquipamento UNIQUE (nomeEquipamento);

ALTER TABLE Aluguel
ALTER COLUMN qtVezes SET DEFAULT 1;

SELECT * FROM aluguel


/* nome do equipamento, valor aluguel,qual funcionario alugou,ordem alfabetica*/

SELECT nomeEquipamento,

/* nome do cliente,funcionario que atendeu e oq ele alugou */

UPDATE equipamento
SET valorHora = 50



UPDATE aluguel
SET formaPagamento = 'cartão'
WHERE DATE(dataHoraRetirada) BETWEEN '2024-12-25' AND '2025-01-01';


/*1.Criar um aluguel de equipamento para o mês de novembro (qualquer data e hora), qualquer equipamento, qualquer funcionário e qualquer cliente, mas cujo pagamento não tenha sido feito (ficou em aberto).
2.Listar nome de todos os funcionários, cpf e os aluguéis feitos por ele (apenas a data e que equipamento alugou). 
3.Listar nome do cliente, cpf, datas que ele esteve na praia, quem atendeu este
cliente, tudo isto, ordenado por data, da mais nova para a mais antiga, apenas no mês de DEZ24.  
4.Lista do nome dos equipamentos que foram mais alugados em ordem decrescente, do equipamento mais alugado para o menos alugado. Equipamentos não alugados devem sair no relatório. 
5.Listar a arrecadação bruta da barraca de praia entre Natal e Ano Novo.
6.Reajustar preço por hora de todos os equipamentos em 10%.
7.Listar a quantidade de clientes que pagaram utilizando determinada forma de pagamento, em ordem crescente, do método mais usado para o menos usado. Também é necessário que pagamentos não realizados sejam apontados. 
8.Listar quanto a barraca faturou por dia, em cada um dos dias do mês de dezembro apenas. 
9.Excluir o pagamento e todas as referências a ele criadas no item 1. Se tentar excluir direto da tabela aluguel teremos um problema? Por que isto ocorre? Como resolver (escrever o código usado)?
10.Listar todos os equipamentos que tiveram a quantidade de aluguéis inferiores a 5 unidades, durante o mês de DEZ24.*/

INSERT INTO Aluguel (idCliente,idFuncionario,dataHoraRetirada,dataHoraDevolucao,pago,formaPagamento,qtVezes)
VALUES 
(69, 1, '2024-11-11 09:00:00', (NULL), 0, (NULL),(NULL))

INSERT INTO aluguelequipamento (idAluguel, idEquipamento, quantidade, valorUnitario, valorItem)
VALUES (LAST_INSERT_ID(),
(SELECT idEquipamento FROM equipamento WHERE nomeEquipamento = 'mesinha'),1,1.50,(1.50*1)
);
UPDATE equipamento
SET qtd = qtd - 1
WHERE nomeEquipamento = 'Mesinha'


SELECT funcionario.nomeFuncionario,funcionario.cpf,aluguel.dataHoraRetirada,equipamento.nomeEquipamento
FROM funcionario
INNER JOIN aluguel
ON aluguel.idFuncionario = funcionario.idFuncionario
INNER JOIN aluguelequipamento
ON aluguelequipamento.idAluguel = aluguel.idAluguel
INNER JOIN equipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento;

SELECT cliente.nomeCliente,cliente.cpf,aluguel.dataHoraRetirada,funcionario.nomeFuncionario
FROM cliente
INNER JOIN aluguel
ON aluguel.idCliente = cliente.idCliente
INNER JOIN funcionario
ON aluguel.idFuncionario = funcionario.idFuncionario
WHERE MONTH(aluguel.dataHoraRetirada) = 12
  AND YEAR(aluguel.dataHoraRetirada) = 2024
ORDER BY aluguel.dataHoraRetirada DESC;


SELECT equipamento.nomeEquipamento,COUNT(aluguelequipamento.idEquipamento) AS totalAlugado
FROM equipamento
LEFT JOIN aluguelequipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento
LEFT JOIN aluguel
ON aluguel.idAluguel = aluguelequipamento.idAluguel
GROUP BY equipamento.idEquipamento, equipamento.nomeEquipamento
ORDER BY totalAlugado DESC;

SELECT sum(valorAPagar) AS ArrecadacaoBruta
FROM aluguel
WHERE DATE(dataHoraRetirada) BETWEEN '2024-12-25' AND '2025-01-01';


UPDATE equipamento
SET valorHora = valorHora *1.10

SELECT COALESCE(formaPagamento, 'Não pago') AS FormaDePagamento,COUNT(*) AS Quantidade
FROM aluguel
GROUP BY formaPagamento
ORDER BY Quantidade ASC;


SELECT DATE(dataHoraRetirada) AS Dia,SUM(valorAPagar) AS FaturamentoDiario
FROM aluguel
WHERE MONTH(dataHoraRetirada) = 12
GROUP BY DATE(dataHoraRetirada)
ORDER BY Dia;

/* Não da para excluir por causa da chave estrangeira, para excluir tem que retirar todas as chaves que ele esta*/

SELECT equipamento.idEquipamento,equipamento.nomeEquipamento,COUNT(aluguelequipamento.idEquipamento) AS totalAlugueis
FROM equipamento
LEFT JOIN aluguelequipamento
ON equipamento.idEquipamento = aluguelequipamento.idEquipamento
LEFT JOIN aluguel
ON aluguel.idAluguel = aluguelequipamento.idAluguel
WHERE MONTH(aluguel.dataHoraRetirada) = 12
AND YEAR(aluguel.dataHoraRetirada) = 2024
GROUP BY equipamento.idEquipamento, equipamento.nomeEquipamento
HAVING COUNT(aluguelequipamento.idEquipamento) < 5;
