CREATE TABLE smart_home.armazenamento(
    id_armazenamento     INTEGER     NOT NULL
,   nome                VARCHAR(45) NOT NULL
,   comodo              VARCHAR(45) NOT NULL
,   unique(id_armazenamento)
,   primary key(id_armazenamento)
);