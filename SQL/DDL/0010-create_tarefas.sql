CREATE TABLE smart_home.tarefas(
    id_tarefa      INTEGER         NOT NULL
,   nome            VARCHAR(45)    NOT NULL
,   descricao       VARCHAR(255)
,   status          VARCHAR(10)     NOT NULL
,   id_morador      INTEGER         NOT NULL
,   id_casa         INTEGER         NOT NULL
,   unique(id_tarefa)
,   PRIMARY KEY(id_tarefa   )
,   FOREIGN KEY(id_morador, id_casa)    REFERENCES smart_home.moradores(id_morador, id_casa)
);