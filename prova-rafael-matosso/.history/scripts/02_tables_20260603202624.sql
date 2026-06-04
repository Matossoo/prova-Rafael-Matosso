-- Active: 1780522161121@@127.0.0.1@3307@industria_db
/*
5 setores;
10 funcionários;
10 produtos;
5 categorias;
5 fornecedores;
15 ordens de produção;
10 registros de qualidade.*/

create table setores (
    id_setor int auto_increment primary key,
    nome varchar(255) not null,
    localizacao varchar(255) not null
);

create table funcionarios (
    id_funcionario int auto_increment primary key,
    nome varchar(255) not null,
    cpf varchar(14) not null unique,
    cargo varchar(255) not null,
    salario decimal(10, 2) not null,
    data_admissao date,
    id_setor int,
    foreign key (id_setor) 
    references setores(id_setor),
);

create table produtos (
    id_produto int auto_increment primary key,
    codigo varchar(50) not null unique,
    nome varchar(255) not null,
    descricao text,
    preco decimal(10, 2) not null,
    quantidade_estoque int not null,
    id_categoria int,
    foreign key (id_categoria) 
    references categorias(id_categoria),
    id_fornecedor int,
    foreign key (id_fornecedor) 
    references fornecedores(id_fornecedor),
    
);

create table categorias (
    id_categoria int auto_increment primary key,
    nome varchar(255) not null
);

create table fornecedores (
    id_fornecedor int auto_increment primary key,
    razao_social varchar(255) not null,
    cnpj varchar(18) not null unique,
    telefone varchar(20),
    cidade varchar(255)
);

create table ordens_producao (
    id_ordem int auto_increment primary key,
    data_producao date not null,
    quantidade int not null,
    status_producao varchar(50) not null,
    tempo_producao int not null,
    tempo_real int not null
);

create table registros_qualidade (
    id_registro int auto_increment primary key,
    data_inspecao date not null,
    resultado varchar(255) not null,
    observacoes text,
    id_ordem int,
    foreign key (id_ordem)
    references ordens_producao(id_ordem)
);

