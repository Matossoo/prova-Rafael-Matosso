-- Active: 1780522161121@@127.0.0.1@3307@industria_db
-- 1
select * from setores;

-- 2
select nome, cargo, salario 
from funcionarios;

-- 3
select codigo, nome, preco from produtos;

-- 4
select nome, quantidade_estoque from produtos;

select nome from funcionarios
where data_admissao > '2020-01-01';

-- 6 
select * from produtos
where quantidade_estoque > 100;

-- 7 
select razao_social from fornecedores
where cidade = 'São paulo';

-- 8 
select nome 