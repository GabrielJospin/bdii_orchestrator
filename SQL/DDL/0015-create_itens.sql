CREATE TABLE smart_home.itens(
    codigo_de_barra     INTEGER     NOT NULL
,   nome                VARCHAR(45) NOT NULL
,   quantidade          INTEGER     NOT NULL
,   marca               VARCHAR(45)
,   categoria           VARCHAR(45) NOT NULL
,   id_armazenamento    INTEGER     NOT NULL
,   unique(codigo_de_barra)
,   PRIMARY KEY(codigo_de_barra)
,   FOREIGN KEY(id_armazenamento)       REFERENCES smart_home.armazenamento(id_armazenamento)
);

CREATE TABLE smart_home.alimentos(
    codigo_de_barra     INTEGER     NOT NULL
,   validade            DATE        NOT NULL
,   tipo                VARCHAR(45) NOT NULL
,   consercacao         VARCHAR(45)
,   unique(codigo_de_barra)
,   PRIMARY KEY(codigo_de_barra)
,   FOREIGN KEY(codigo_de_barra)        REFERENCES smart_home.itens(codigo_de_barra)
);

CREATE TABLE smart_home.eletricos(
    codigo_de_barra     INTEGER     NOT NULL
,   voltagen            INTEGER     NOT NULL
,   unique(codigo_de_barra)
,   PRIMARY KEY(codigo_de_barra)
,   FOREIGN KEY(codigo_de_barra)        REFERENCES smart_home.itens(codigo_de_barra)
);

CREATE TABLE smart_home.higiene(
    codigo_de_barra     INTEGER     NOT NULL
,   tipo_higiene        VARCHAR(45)
,   finalidade          VARCHAR(45)
,   validade            DATE        NOT NULL
,   temperatura         INTEGER
,   unique(codigo_de_barra)
,   PRIMARY KEY(codigo_de_barra)
,   FOREIGN KEY(codigo_de_barra)        REFERENCES smart_home.itens(codigo_de_barra)
);

CREATE TABLE smart_home.livros(
    codigo_de_barra     INTEGER     NOT NULL
,   autor               VARCHAR(45) NOT NULL
,   editora             VARCHAR(45)
,   ano                 INTEGER
,   num_paginas         INTEGER
,   unique(codigo_de_barra)
,   PRIMARY KEY(codigo_de_barra)
,   FOREIGN KEY(codigo_de_barra)        REFERENCES smart_home.itens(codigo_de_barra)
);

CREATE TABLE smart_home.roupas(
    codigo_de_barra     INTEGER     NOT NULL
,   tamanho             VARCHAR(3)  NOT NULL
,   tipo                VARCHAR(20)
,   unique(codigo_de_barra)
,   PRIMARY KEY(codigo_de_barra)
,   FOREIGN KEY(codigo_de_barra)        REFERENCES smart_home.itens(codigo_de_barra)
);