insert into tb_grupo (nome, descricao) values ('ADMIN', 'Grupo de administradores');
insert into tb_grupo (nome, descricao) values ('MODERADOR', 'Grupo de Moderadores');
insert into tb_grupo (nome, descricao) values ('ALUNO', 'Grupo de Alunos');

insert into tb_permissao (nome) values ('MANTER_MODERADOR');
insert into tb_permissao (nome) values ('MANTER_PUBLICACAO');
insert into tb_permissao (nome) values ('MANTER_ALUNO');

insert into tb_grupo_permissao (tb_grupo_id, tb_permissao_id) values (1, 1);
insert into tb_grupo_permissao (tb_grupo_id, tb_permissao_id) values (1, 2);
insert into tb_grupo_permissao (tb_grupo_id, tb_permissao_id) values (1, 3);

INSERT INTO tb_instituicao (nome) VALUES ('UNIEVANGÉLICA - CENTRO UNIVERSITÁRIO DE ANÁPOLIS');

INSERT INTO tb_curso (nome, modalidade, grau, fk_tb_instituicao_id) VALUES ('Engenharia de Computação', 'Presencial', 'Superior', 1);

INSERT INTO tb_usuario (nome, sobrenome, nome_usuario, email, senha, dt_nascimento, sexo, dt_cadastro, status)
VALUES
('User', 'Teste', 'user',	'user@gmail.com', '$2a$10$ARppQC0FRWaGP4pnZqYbpuVyYOWIp4q1r2ViT3PGYK6BafD5PXFiS', '1995-01-19', 'masculino', current_timestamp(), 1);

INSERT INTO tb_usuario_curso (fk_tb_usuario_id, fk_tb_curso_id) VALUES (last_insert_id(), 1);

INSERT INTO tb_aluno (fk_tb_usuario_id) VALUES (last_insert_id());

insert into tb_usuario_grupo (fk_tb_usuario_id, fk_tb_grupo_id) values (last_insert_id(), 3);




