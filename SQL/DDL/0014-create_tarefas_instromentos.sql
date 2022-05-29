create table smart_home.tarefas_instrumentos(
    id_tarefa       INTEGER     NOT NULL
,   id_instrumento  INTEGER     NOT NULL
,   PRIMARY KEY(id_tarefa, id_instrumento)
,   FOREIGN KEY(id_tarefa)          REFERENCES smart_home.tarefas(id_tarefa)
,   FOREIGN KEY(id_instrumento)     REFERENCES smart_home.instrumentos(id_instrumento)
);