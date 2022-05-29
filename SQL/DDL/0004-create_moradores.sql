create table smart_home.moradores(
    id_casa     INTEGER         NOT NULL
,   id_morador  INTEGER         NOT NULL
,   nome        VARCHAR(20)     NOT NULL
,   sobrenome   VARCHAR(50)     NOT NULL
,   idade       INT             NOT NULL
,   unique(id_casa, id_morador)
,   PRIMARY KEY(id_casa, id_morador)
,   FOREIGN KEY(id_casa) REFERENCES     smart_home.casas(id_casa)
);