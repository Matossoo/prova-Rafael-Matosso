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
where data_admissao > '2020-00-01'; 