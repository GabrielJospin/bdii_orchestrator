CREATE TABLE smart_home.tarefas_itens(
    id_tarefa       INTEGER NOT NULL
,   id_item         INTEGER NOT NULL
,   unique(id_tarefa, id_item)
,   PRIMARY KEY(id_tarefa, id_item)
,   FOREIGN KEY(id_tarefa)     REFERENCES smart_home.tarefas(id_tarefa)
,   FOREIGN KEY(id_item)     REFERENCES smart_home.itens(codigo_de_barra)
);