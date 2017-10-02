insert into papel values (0, 'Operacional');
insert into papel values (1, 'Administrativo');

select * from papel;
select * from permissao;
drop table papel;
select * from papel_permissao;

insert into permissao values (1, 'Cadastra Motorista');
insert into permissao values (2, 'Cadastra Veiculo');
insert into permissao values (3, 'Cadastra Cliente');
insert into permissao values (4, 'Cadasdra Usuario');
insert into permissao values (5, 'Cadastra O.S');
insert into permissao values (6, 'Transporte');
insert into permissao values (7, 'Empresa');
insert into permissao values (8, 'Informaçoes');

insert into papel_permissao values (0, 1);
insert into papel_permissao values (0, 2);
insert into papel_permissao values (0, 3);
insert into papel_permissao values (0, 5);
insert into papel_permissao values (0, 6);
insert into papel_permissao values (0, 8);

delete from papel where id = 10;
select * from permissao;
select * from usuario;
insert into papel_permissao values (1, 1);
insert into papel_permissao values (1, 2);
insert into papel_permissao values (1, 3);
insert into papel_permissao values (1, 4);
insert into papel_permissao values (1, 5);
insert into papel_permissao values (1, 6);
insert into papel_permissao values (1, 7);
insert into papel_permissao values (1, 8);
select * from usuario;

insert into usuario values (2, 'tharlison', 'tds', '21232F297A57A5A743894A0E4A801FC3', 0);