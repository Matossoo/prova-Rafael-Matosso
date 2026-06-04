-- Active: 1780522161121@@127.0.0.1@3307@industria_db
insert into setores (nome, localizacao) values 
('Usinagem', 'Prédio A'),
('Soldagem', 'Prédio B'),
('Pintura', 'Prédio C'),
('Montagem', 'Prédio D'),
('Qualidade', 'Prédio E');

insert into funcionarios (nome, cpf, cargo, salario, data_admissao, id_setor) values 
('Rafael Matosso', '123.456.789-00', 'Engenheiro de Produção', 8000.00, '2020-01-15', 1),
('Maria Silva', '987.654.321-00', 'Técnico de Usinagem', 4000.00, '2019-03-10', 1),
('João Pereira', '456.789.123-00', 'Soldador', 3500.00, '2021-06-20', 2),
('Ana Souza', '789.123.456-00', 'Pintora', 3000.00, '2018-11-05', 3),
('Carlos Oliveira', '321.654.987-00', 'Montador', 3200.00, '2022-02-28', 4),
('Fernanda Lima', '654.321.789-00', 'Analista de Qualidade', 4500.00, '2017-08-12', 5),
('Pedro Santos', '111.222.333-44', 'Operador de Máquinas', 2800.00, '2020-09-01', 1),
('Luciana Costa', '555.666.777-88', 'Supervisor de Produção', 6000.00, '2019-12-15', 1),
('Ricardo Almeida', '999.888.777-66', 'Técnico de Soldagem', 3800.00, '2021-04-18', 2),
('Sofia Rodrigues', '444.333.222-11', 'Pintora Assistente', 2500.00, '2022-07-10', 3);

insert into produtos (codigo, nome, descricao, preco, quantidade_estoque, id_categoria, id_fornecedor) VALUES
('11111', 'Parafuso', 'parafuso de aço', 0.5, 1000, 2, 1),
('22222', 'porca', 'porca de aço', 0.3, 2000, 2, 2),
('33333', 'arruela', 'arruela top', 0.2, 3000, 1, 3),
('44444', 'tubo hidráulico', 'tubo de alta pressão', 15.0, 500, 3, 4),
('55555', 'válvula', 'válvula de controle', 25.0, 200, 3, 5),
('66666', 'peça automotiva a', 'peça para motor', 100.0, 50, 4, 1),
('77777', 'peça automotiva b', 'peça para transmissão', 150.0, 30, 4, 2),
('88888', 'capacete de segurança', 'capacete com certificação', 80.0, 100, 4, 3),
('99999', 'óculos de proteção', 'óculos anti-impacto', 20.0, 150, 4, 4),
('10101', 'luvas de segurança', 'luvas resistentes a cortes', 10.0, 200, 4, 5);

insert into categorias (nome) values 
('Estruturas metálicas'),
('Parafusos'),
('Componentes hidráulicos'),
('Peças automotivas'),
('Equipamentos de segurança');

insert into fornecedores (razao_social, cnpj, telefone, cidade) values 
('Fornecedor A', '12.345.678/0001-90', '(11) 1234-5678', 'São Paulo'),
('Fornecedor B', '98.765.432/0001-10', '(21) 9876-5432', 'Rio de Janeiro'),
('Fornecedor C', '56.789.012/0001-34', '(31) 5678-9012', 'Belo Horizonte'),
('Fornecedor D', '34.567.890/0001-56', '(41) 3456-7890', 'Curitiba'),
('Fornecedor E', '78.901.234/0001-78', '(51) 7890-1234', 'Porto Alegre');

insert into ordens_producao (data_producao, quantidade, status_producao, tempo_producao, tempo_real) values
('2026-05-05', 5, 'Concluido', 1, 3),
('2026-05-06', 2, 'Concluido', 4, 3),
('2026-05-06', 9, 'Em produção', 8, 9),
('2026-05-07', 11, 'Concluido', 9, 10),
('2026-05-09', 18, 'Em produção', 6, 3),
('2026-05-12', 1, 'Em produção', 5, 3),
('2026-05-20', 0, 'Em produção', 2, 3),
('2026-05-21', 6, 'Concluido', 12, 17),
('2026-05-22', 9, 'Concluido', 56, 60),
('2026-05-25', 21, 'Em produção', 11, 23),
('2026-05-27', 6, 'Concluido', 31, 32),
('2026-05-28', 7, 'Em produção', 1, 31),
('2026-05-29', 5, 'Concluido', 2, 13),
('2026-05-30', 1, 'Em produção', 31, 13),
('2026-06-01', 5, 'Em produção', 21, 22);

insert into registros_qualidade (data_inspecao, resultado, observacoes, id_ordem) values
('2026-06-03', 'Concluido', 'bom', 1),
('2026-06-05', 'Concluido', 'diferente', 1),
('2026-06-07', 'Concluido', 'interessante', 2),
('2026-06-08', 'Concluido', 'Nenhuma', 7),
('2026-06-09', 'Concluido', 'Nenhuma', 8),
('2026-06-09', 'Concluido', 'Otimo', 12),
('2026-06-10', 'Concluido', 'Nenhuma', 2),
('2026-06-21', 'Concluido', 'Nenhuma', 12),
('2026-06-22', 'Concluido', 'Nenhuma', 11),
('2026-06-22', 'Concluido', 'Nenhuma', 15),
