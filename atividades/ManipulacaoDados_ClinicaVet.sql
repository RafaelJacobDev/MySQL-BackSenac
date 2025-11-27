/* Busca generica de dados*/
SELECT * FROM animal

/* busca especifica de dados*/
SELECT nomeAnimal, peso FROM animal

/* Inserção explicita*/
INSERT INTO Cliente (nomeCliente,cpf,Email,cidade,estado,CEP,tipoLogadouro,nomeLogradouro,numero,complemento)
VALUES('Rafael','77755566622','rafael.jtgrangeiro@senacsp.br','Santos','SP','1105499','Avenida','Conselheiro Nebias','58','ap54');

SELECT * FROM cliente
SELECT nomeCliente,Email FROM cliente

/* inserção implixita*/
INSERT INTO Cliente
VALUES(2,'Juquinha','77755566628','juquinha@senacsp.br','Santos','SP','1105499','Avenida','Conselheiro Nebias','58','ap54');

SELECT * FROM cliente

/*Alteração de dados*/
UPDATE cliente
SET cidade='São Paulo',
cep='11088777',
nomeLogradouro='Jabaquara',
numero='132',
complemento='ap 55'
WHERE idcliente=2
 
/*exclusão de dados*/
DELETE FROM cliente
WHERE idcliente=2
 
/*buscas básicas*/
/*1*/
SELECT * FROM cliente
WHERE nomeCliente LIKE '%M%'
/*2*/
SELECT nomeCliente,cpf,cidade FROM cliente
WHERE cidade<>'São Paulo' /* >, <, >=, <=, =, <>, and, or, not */
/*3*/
SELECT nomeCliente, email FROM cliente
ORDER BY nomeCliente DESC

INSERT INTO cliente(nomeCliente,cpf,Email,cidade,estado,CEP,tipoLogadouro,nomeLogradouro,numero,complemento) 
VALUES
('João da Silva' , '12345678900' , 'joao.silva@email.com' , 'São Paulo' , 'SP' , '01001000' , 'Rua' , 'Augusta' , '123' , 'Apto 12'),
('Ana Pereira' , '98765432199'  , 'ana.pereira@email.com' , 'Rio de Janeiro' , 'RJ' , '22041001' , 'Avenida' , 'Atlântica' , '456' , 'Bloco B'),
('Carlos Souza' , '34567890122'  , 'carlos.souza@email.com' , 'Belo Horizonte' , 'MG' , '30130110' , 'Rua' , 'da Bahia' , '890' , 'Sala 3'),
('Mariana Oliveira' , '45678901233'  , 'mariana.oliveira@email.com' , 'Curitiba' , 'PR' , '80010000' , 'Alameda' , 'Cabral' , '77' , 'Casa 2'),
('Pedro Gomes' , '56789012344'  , 'pedro.gomes@email.com' , 'Porto Alegre' , 'RS' , '90010150' , 'Rua' , 'dos Andradas' , '345' , 'Fundos'),
('Luciana Alves' , '67890123455'  , 'luciana.alves@email.com' , 'Brasília' , 'DF' , '70040010' , 'Setor' , 'Comercial Norte' , '25' , 'Sala 201'),
('Rafael Lima' , '78901234566'  , 'rafael.lima@email.com' , 'Fortaleza' , 'CE' , '60060350' , 'Avenida' , 'Beira Mar' , '999' , 'Cobertura'),
('Patrícia Ferreira' , '89012345677'  , 'patricia.ferreira@email.com' , 'Salvador' , 'BA' , '40015970' , 'Ladeira' , 'da Barra' , '58' , null),
('Fernando Costa' , '90123456788'  , 'fernando.costa@email.com' , 'Campinas' , 'SP' , '13010200' , 'Rua' , 'Conceição' , '312' , 'Sala 5'),
('Gabriela Santos' , '01234567899'  , 'gabriela.santos@email.com' , 'Vitória' , 'ES' , '29010180' , 'Avenida' , 'Beira Rio' , '500' , null),
('Bruno Rocha' , '11122233344'  , 'bruno.rocha@email.com' , 'Goiânia' , 'GO' , '74003010' , 'Rua' , '24 de Outubro' , '210' , 'Loja 1'),
('Isabela Mendes' , '22233344455'  , 'isabela.mendes@email.com' , 'Boa Vista' , 'RR' , '69301040' , 'Travessa' , 'das Flores' , '14' , null),
('Felipe Araújo' , '33344455566'  , 'felipe.araujo@email.com' , 'Manaus' , 'AM' , '69005040' , 'Avenida' , 'Eduardo Ribeiro' , '801' , 'Apto 303'),
('Larissa Martins' , '44455566677'  , 'larissa.martins@email.com' , 'Florianópolis' , 'SC' , '88010400' , 'Rua' , 'Felipe Schmidt' , '230' , null),
('André Teixeira' , '55566677788' , 'andre.teixeira@email.com' , 'São Luís' , 'MA' , '65010030' , 'Avenida' , 'Pedro II' , '77' , 'Casa 1'),
('Beatriz Nogueira' , '66677788899'  , 'beatriz.nogueira@email.com' , 'Santos' , 'SP' , '11010001' , 'Rua' , 'Conselheiro Nébias' , '920' , 'Bloco A'),
('Rodrigo Ribeiro' , '77788899900'  , 'rodrigo.ribeiro@email.com' , 'Ribeirão Preto' , 'SP' , '14010060' , 'Avenida' , 'Independência' , '410' , null),
('Carla Fernandes' , '88899900011'  , 'carla.fernandes@email.com' , 'Natal' , 'RN' , '59020120' , 'Rua' , 'das Dunas' , '199' , null),
('Ricardo Barbosa' , '99900011122'  , 'ricardo.barbosa@email.com' , 'Campo Grande' , 'MS' , '79002970' , 'Avenida' , 'Afonso Pena' , '321' , 'Sala 10'),
('Vanessa Castro' , '10120230344' , 'vanessa.castro@email.com' , 'Maceió' , 'AL' , '57020000' , 'Rua' , 'do Sol' , '76' , 'Fundos');

SELECT nomeCliente, email FROM cliente
ORDER BY nomeCliente

SELECT nomeCliente,cpf,cidade FROM cliente
WHERE cidade<>'São Paulo'
/*4 
listar nome dos clientes, cidade e estado de todos aqueles que são do estado de sp */

SELECT idCliente, nomeCliente,cidade,estado FROM cliente
WHERE estado='SP'

SELECT idCliente, nomeCliente,cidade,estado FROM cliente
WHERE nomeCliente LIKE 'A%' AND estado='SP' OR estado='RJ'

SELECT idCliente, nomeCliente, cidade, estado FROM cliente
WHERE (nomeCliente like 'F%' AND estado= 'SP') OR (nomeCliente like 'F%' AND estado= 'RJ') OR (nomeCliente like 'F%' AND estado= 'MG') OR (nomeCliente like 'F%' AND estado= 'ES')
ORDER BY nomeCliente DESC

INSERT INTO cliente(nomeCliente,cpf,Email,cidade,estado,CEP,tipoLogadouro,nomeLogradouro,numero,complemento) 
VALUES ('João da Silva' , '12345678908' , 'joao.silva@email.com' , 'Rio de Janeiro' , 'RJ' , '01001000' , 'Rua' , 'Augusta' , '123' , 'Apto 12')

SELECT idCliente, nomeCliente,cidade,estado FROM cliente
WHERE nomeCliente LIKE 'A%' AND (estado='SP' OR estado='RJ')

SELECT idCliente, nomeCliente, cidade, estado FROM cliente
WHERE estado IN ('SP', 'RJ','ES','MG') AND nomeCliente LIKE 'F%'
ORDER BY nomeCliente

SELECT idCliente, nomeCliente, cidade, complemento FROM cliente
WHERE (UPPER(TRIM(complemento)) NOT LIKE 'APTO%'AND UPPER(TRIM(complemento)) NOT LIKE 'LOJA%' AND UPPER(TRIM(complemento)) NOT LIKE 'AP%' AND UPPER(TRIM(complemento)) NOT LIKE 'sala%')OR complemento IS NULL
ORDER BY nomeCliente;
SELECT DISTINCT complemento FROM cliente ORDER BY complemento;

/*8 Listar todos os dados dos clientes que morem no estado de SP e morem em Avenidas,
em ordem decrescente por nome*/

SELECT * FROM cliente
WHERE (estado='SP') AND (tipoLogadouro='Avenida')
ORDER BY nomeCliente DESC 

/*9 Listar nome e cidade de todos os clientes que começam com a letra R, ordenando 
por nome em ordem alfabética*/
 
/*10 Listar o nome, email e cpf de todos os clientes que possuem email da uol e que morem 
no estado de sp */

SELECT idCliente, nomeCliente, cidade FROM cliente
WHERE nomeCliente LIKE 'R%'
ORDER BY nomeCliente

SELECT idCliente, nomeCliente, email, cpf, estado FROM cliente
WHERE email LIKE ('%@email.%') AND estado IN ('SP')
ORDER BY nomeCliente

INSERT INTO tiposervico (nomeservico, valor)
VALUES 
('Consulta Padrão',150),
('Consulta Emergência',250),
('Exame - Sangue',100),
('Exame - Ultrassom|Raio X',300),
('Vacina - Geral',100),
('Castração',80),
('Internação',600);

SELECT * FROM tiposervico
 
INSERT INTO animal (idCliente, nomeAnimal, especie, raca, peso, porte, sexo, datadenascimento)
VALUES
(1,  'Thor',  'Canino', 'SRD', 12.40, 'M', 'M', 2021),
(7,  'Maya',  'Felino', 'Siames', 4.20, 'P', 'F', 2023),
(12, 'Pingo', 'Canino', 'Pinscher', 3.10, 'P', 'M', 2022),
(18, 'Luna',  'Felino', 'Persa', 3.80, 'P', 'F', 2020),
(22, 'Zeca',  'Ave',    'Calopsita', 0.09, 'P', 'M', 2024);
 
INSERT INTO veterinario (nomeVeterinario, crmv, especialidade)
VALUES 
('Farinhas Breno', 19234511070, 'Vet de Animais Intolerantes Celíacos'),
('Camila Souza', 20234511111, 'Cirurgiã de Pequenos Animais'),
('Rafael Nogueira', 18256722222, 'Clínico Geral e Emergencista'),
('Larissa Almeida', 17287633333, 'Especialista em Felinos'),
('Pedro Henrique', 16234544444, 'Anestesista Veterinário'),
('Juliana Ribeiro', 19298755555, 'Dermatologista de Animais Domésticos'),
('Lucas Fernandes', 15287666666, 'Ortopedista Veterinário'),
('Ana Beatriz Costa', 14234577777, 'Especialista em Animais Silvestres'),
('Gabriel Martins', 13287688888, 'Cardiologista Veterinário'),
('Patrícia Lima', 12234599999, 'Nutricionista Animal');
 
INSERT INTO consulta ( idAnimal, idVeterinario, dataHora, pago, formaPagamento, quantidadeDvezes, valorTotal, valorPago)
VALUES 
(1,3, '2025-11-03 18:00', 1, 'cartão de débito', 1, 700.00, 700.00),
(2,5, '2025-11-04 15:30', 1, 'cartão de crédito', 3, 850.00, 850.00),
(3,6, '2025-11-05 12:30', 1, 'dinheiro', 1, 750.00, 750.00),
(4,9, '2025-11-06 11:30', 1, 'dinheiro', 1, 500.00, 500.00),
(5,2, '2025-11-07 10:30', 1, 'cartão de crédito', 5, 800.00, 800.00);
 
INSERT INTO consulta_tiposervico (idConsulta, idTipoServico, valorServico)
VALUES
(11, 7, 600.00),
(12, 6, 80.00),
(13, 2, 250.00),
(14, 5, 100.00),
(15, 4, 300.00);

SELECT * FROM tiposervico
SELECT * FROM cliente
SELECT * FROM consulta_tiposervico
SELECT * FROM celulares
SELECT * FROM animal

/*Inserir 2 consultas com 1 procedimento cada para um mesmo animal da clínica, mas em dias diferentes; (2 coins por linha afetada corretamente)*/
 
INSERT INTO consulta (idAnimal, idVeterinario, dataHora, Pago, formaPagamento, quantidadeDvezes, valorTotal, valorPago)
VALUES
(1, 2, '2025-11-05 12:30', 1, 'pix', 1, 600.00, 600.00);
 
INSERT INTO consulta (idAnimal, idVeterinario, dataHora, Pago, formaPagamento, quantidadeDvezes, valorTotal, valorPago)
VALUES 
(1, 2, '2025-11-06 13:30', 0, 'Dinheiro', 1, 600.00, 0.00);
 
INSERT INTO consulta_tiposervico (idConsulta, idTipoServico, valorServico)
VALUES 
(10, 11, 600.00),
(10, 11, 600.00);
 
/*Inserir 1 cosulta com 2 procedimentos para um mesmo animal da clínica. (2 coins por linha afetada corretamente)*/
INSERT INTO consulta (idAnimal, idVeterinario, dataHora, Pago, formaPagamento, quantidadeDvezes, valorTotal, valorPago)
VALUES
(1, 1, '2025-11-05 12:30', 1, 'pix', 1, 150.00, 150.00),
(1, 5, '2025-11-05 13:30', 0, 'pix', 1, 600.00, 0.00);
 
INSERT INTO consulta_tiposervico (idConsulta, idTipoServico, valorServico)
VALUES 
(13, 1, 150.00),
(13, 7, 600.00);


UPDATE consulta_tiposervico
SET idConsulta = 18
WHERE idConsultaTipoServico = 19;

ALTER TABLE veterinario
ADD CONSTRAINT crmv UNIQUE (crmv);

/*veterinarios (nome,crmv) apenas dos que ja atenderam uma consulta (dataHora)*/

/*INNER JOIN*/
SELECT nomeVeterinario, crmv, dataHora, valorTotal FROM veterinario
INNER JOIN consulta
ON veterinario.idVeterinario = consulta.idVeterinario

/*LEFT JOIN-ordenado por nome, depois pro data-apenas veterinarios com a letra P*/
SELECT nomeVeterinario, crmv, dataHora, valorTotal FROM veterinario
LEFT JOIN consulta
ON veterinario.idVeterinario = consulta.idVeterinario
WHERE nomeVeterinario LIKE 'P%'
ORDER BY nomeVeterinario, dataHora ASC 

/*Nome do animal, nome do cliente, contatotos do cliente em ordem alfabetica por nome do animal
Apenas clientes que moram no estado de SP*/

SELECT nomeAnimal,nomeCliente, email FROM cliente
INNER JOIN animal
ON cliente.idCliente = animal.idCliente
WHERE estado LIKE 'SP'
ORDER BY nomeAnimal ASC 


/*Funções de Agregação*/
/*Count*/
SELECT COUNT(idAnimal) AS 'Qtd Animais' FROM animal;
 
/*Max |Min */
SELECT MAX(idCliente) AS 'Maior ID de Cliente' FROM cliente;
SELECT MIN(idCliente) AS 'Menor ID de Cliente' FROM cliente;
SELECT MAX(peso) AS 'Animal mais pesado' FROM animal
 
/*AVG*/
SELECT AVG(peso) AS 'Média de pesos' FROM animal;
 
/*SUM*/
SELECT SUM(valorPago) AS 'Rendimento Bruto - R$' FROM consulta;

/*Funções Agregação com GROUP BY*/
/*Quantidade de clientes por estado*/
SELECT estado, COUNT(idCliente) AS qtd FROM cliente 
WHERE estado IN ('SC','PR','RS')
GROUP BY estado
ORDER BY estado DESC
 
/* B - Nome do animal, peso, que animal que é, nome do cliente de todos os animais

em ordem alfabética por nome do animal */

SELECT nomeAnimal,peso, especie, nomeCliente FROM animal
INNER JOIN cliente
ON animal.idCliente = cliente.idCliente
ORDER BY nomeAnimal
 
/* C - Nome do procedimento, seu valor, de todos os procedimentos que foram realizados

em alguma consulta, em ordem alfabética por nome do procedimento. Também se requer a data

em que foram realizados os procedimentos.  */
 
SELECT ts.nomeServico, ts.valor, c.dataHora AS data_realizacao
FROM tipoServico ts
JOIN consulta_tiposervico ctsc ON ts.idTipoServico = ctsc.idTipoServico
JOIN consulta c ON ctsc.idConsulta = c.idConsulta
ORDER BY ts.nomeServico;
 
 
/* D - Nome do procedimento, seu valor, de todos os procedimentos cadastrados sejam

realizados ou não em alguma consulta, em ordem alfabética por nome do procedimento. 

Também se requer a data em que foram realizados os procedimentos.*/


SELECT nomeServico,valor,dataHora
FROM tipoServico 
LEFT JOIN consulta_tiposervico ON tipoServico.idTipoServico = consulta_tiposervico.idTipoServico
LEFT JOIN Consulta ON consulta_tiposervico.idConsulta = consulta.idConsulta
ORDER BY nomeServico;

 
/* E - Nome do cliente, cpf, cidade, estado de todos os clientes

que vivem na região sudeste em ordem alfabética por nome e cidade. */

SELECT nomecliente,cpf,cidade,estado FROM cliente
WHERE estado IN ('sp','es','rj','mg');
 
/*A gente já fez a A
 
e a segunda parte:
 
/*Todos os animais e a quantidade de espécies*/

SELECT especie, COUNT(*) AS quantidade
FROM animal
GROUP BY especie;
 
/*Todos os animais e a quantidade de espécies, mas apenas dos animais que possuem 

mais de 3 espécies*/

SELECT especie, COUNT(especie) AS quantidade_especies
FROM animal
GROUP BY especie
HAVING COUNT(especie) >= 2;


