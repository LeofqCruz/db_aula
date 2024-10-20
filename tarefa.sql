drop table if exists produtos;

create table produtos(
id_produto 			int primary key auto_increment,
nome				varchar(60) not null,
preco				decimal(10,2) not null,
estoque				int not null,
perecivel			boolean not null,
marca				varchar(60) not null,
nacionalidade		varchar(60) not null
);

insert into produtos values
(null, "esponja de aço", 3.28, 254, false, "Bombril", "Brasileira"),
(null, "vassoura", 13.99, 24, false, "Varre Bem", "Brasileira"),
(null, "escova de cabelo", 9.29, 54, false, "Escovim", "Brasileira"),
(null, "luvas", 17.80, 123, false, "Veste Bem", "Brasileira"),
(null, "ketchup",12.79, 189, true, "Hemmer", "Alemã");

select count(id_produto) from produtos;
select avg(preco) from produtos;
select perecivel, avg(preco) from produtos group by perecivel having perecivel = true;
select perecivel, avg(preco) from produtos group by perecivel having perecivel = false;
select nome, avg(preco) from produtos group by nome;
select  sum(estoque) from produtos;
select nome, marca, estoque from produtos order by preco desc limit 1;
select nome, marca preco from produtos where preco > (select avg(preco) from produtos);
select nacionalidade, count(*) from produtos group by nacionalidade;


