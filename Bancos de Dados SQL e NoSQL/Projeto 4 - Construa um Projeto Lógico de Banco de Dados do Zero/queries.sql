USE OFICINA;
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Brendha de Jesus', 'Av. Paulista, 56', '995253467');
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Fernanda Gomes', 'Rua Dez, 36', '992861734');
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Jose Alves', 'Rua 13 de Maio, 841', '99168492');

INSERT INTO Veiculo (Placa, Modelo, Ano) VALUES ('KNM5246', 'Duster', 2014);
INSERT INTO Veiculo (Placa, Modelo, Ano) VALUES ('CXM8109', 'Palio', 2003); 
INSERT INTO Veiculo (Placa, Modelo, Ano) VALUES ('EFR8501', 'HB20', 2020);

INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES ('005', 'Caio Antunes', 'Rua Guarulhos, 63', 'motor');
INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES ('010', 'Jonathas Faria', 'Av. Presidente, 58', 'freio');
INSERT INTO Mecanico (Codigo, Nome, Endereco, Especialidade) VALUES ('012', 'Wagner Gomes', 'Av. Governador, 865', 'direcao hidraulica');

INSERT INTO Ordem_Servico (Data_Entrega, Numero, Data_Emissao, Valor, Status) VALUES (30/09/2022, '0320', 03/10/2022, 525.36, 'Finalizado');
INSERT INTO Ordem_Servico (Data_Entrega, Numero, Data_Emissao, Valor, Status) VALUES (05/10/2022, '0351', 10/10/2022, 750.36, 'Autorizado'); 
INSERT INTO Ordem_Servico (Data_Entrega, Numero, Data_Emissao, Valor, Status) VALUES (20/10/2022, '0398', 22/10/2022, 1200.23,'Finalizado');

INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Reparo Motor', 1850.00, 560.00); 
INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Conserto Freio', 720.00, 245.00); 
INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Direcao', 1945.00, 799.00); 

INSERT INTO Servicos (Identificacao, Valor) VALUES ('Manutencao', 995.36); 
INSERT INTO Servicos (Identificacao, Valor) VALUES ('Bateria', 652.00); 
INSERT INTO Servicos (Identificacao, Valor) VALUES ('Manutencao', 995.36); 


INSERT INTO Pecas (Quantidade, Identificacao, Valor) VALUES (3, 'Reparo Motor', 560.00); 
INSERT INTO Pecas (Quantidade, Identificacao, Valor) VALUES (2, 'Conserto Freio', 245.99);  
INSERT INTO Pecas (Quantidade, Identificacao, Valor) VALUES (1, 'Direcao', 799.00);

INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Reparo Motor', 1950.00, 560.00); 
INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Conserto Freio', 840.00, 245.00); 
INSERT INTO Tabela_Referencia (Mao_de_Obra, Valor_Servico, Valor_Peca) VALUES ('Direcao', 1980.00, 799.00); 

INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Edson Gomes', 'Av. Paulista, 852', '985632141');
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Ivo Roma', 'Rua Dez, 21', '995842632');
INSERT INTO Cliente (Nome, Endereco, Contato) VALUES ('Arnaldo Luiz', 'Rua 13 de Maio, 354', '98632541');

INSERT INTO Servicos (Identificacao, Valor) VALUES ('Manutencao', 875.26); 
INSERT INTO Servicos (Identificacao, Valor) VALUES ('Bateria', 356.15); 
INSERT INTO Servicos (Identificacao, Valor) VALUES ('Manutencao', 875.24); 

-- CRIANDO QUERIES

-- Recuperações simples com SELECT Statement
select * from Veiculo;

-- Filtros com WHERE Statement
select * from Veiculo where Modelo = 'Duster';

-- Crie expressões para gerar atributos derivados
select (Valor_Servico + Valor_Peca) AS Valor_Total from Tabela_Referencia;

-- Defina ordenações dos dados com ORDER BY
select Identificacao, Valor from Servicos order by Valor desc;

-- Condições de filtros aos grupos – HAVING Statement
select Numero, Valor, Status from Ordem_Servico group by Status having Valor > 500.00;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select *
    from Servicos AS s
    inner join Pecas AS p
    on s.Identificacao = p.Identificacao



