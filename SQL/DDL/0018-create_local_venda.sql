CREATE TABLE smart_home.local_venda(
    id_local        INTEGER     NOT NULL
,   nome            VARCHAR(45) NOT NULL
,   departamento    varchar(45)
,   unique(id_local)
,   PRIMARY KEY(id_local)
);