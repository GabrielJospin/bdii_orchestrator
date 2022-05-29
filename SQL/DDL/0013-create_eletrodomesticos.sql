CREATE TABLE smart_home.eletrodomesticos(
    id_instrumento     INTEGER     NOT NULL
,   voltagem            INTEGER
,   PRIMARY KEY(id_instrumento)
,   FOREIGN KEY(id_instrumento) REFERENCES smart_home.instrumentos(id_instrumento)
);