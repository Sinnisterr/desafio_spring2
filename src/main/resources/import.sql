INSERT INTO tb_categoria(descricao) VALUES ('Curso');
INSERT INTO tb_categoria(descricao) VALUES ('Oficina');

INSERT INTO tb_atividades(categoria_id, nome, descricao, preco) VALUES (1, 'Curso de HTML', 'Aprenda HTML de forma prática', 80.0);
INSERT INTO tb_atividades(categoria_id, nome, descricao, preco) VALUES (2, 'Oficina de GitHub', 'Controle de versões de seu projeto', 50.0);

INSERT INTO tb_participante(email, nome) VALUES('jose@gmail.com', 'José Silva');
INSERT INTO tb_participante(email, nome) VALUES('tiago@gmail.com', 'Tiago Faria');
INSERT INTO tb_participante(email, nome) VALUES('maria@gmail.com', 'Maria do Rosário');
INSERT INTO tb_participante(email, nome) VALUES('teresa@gmail.com', 'Teresa Silva');

INSERT INTO tb_participante_atividade(atividade_id, participante_id) VALUES(1,1);
INSERT INTO tb_participante_atividade(atividade_id, participante_id) VALUES(2,1);
INSERT INTO tb_participante_atividade(atividade_id, participante_id) VALUES(1,2);
INSERT INTO tb_participante_atividade(atividade_id, participante_id) VALUES(1,3);
INSERT INTO tb_participante_atividade(atividade_id, participante_id) VALUES(2,3);
INSERT INTO tb_participante_atividade(atividade_id, participante_id) VALUES(2,4);

-- Usando formato ISO padrão (yyyy-MM-dd HH:mm:ss)
INSERT INTO tb_bloco(atividade_id, inicio, fim) VALUES(1, '2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_bloco(atividade_id, inicio, fim) VALUES(2, '2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_bloco(atividade_id, inicio, fim) VALUES(2, '2017-09-26 08:00:00', '2017-09-26 11:00:00');