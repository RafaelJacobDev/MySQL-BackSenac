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
