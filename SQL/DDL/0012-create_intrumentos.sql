CREATE TABLE smart_home.instrumentos(
    id_instrumento     INTEGER     NOT NULL
,   nome                VARCHAR(45) NOT NULL
,   tipo                VARCHAR(10) NOT NULL
,   id_armazenamento    INTEGER     NOT NULL
,   unique(id_instrumento)
,   primary key(id_instrumento)
,   FOREIGN KEY(id_armazenamento) REFERENCES smart_home.armazenamento(id_armazenamento)

);