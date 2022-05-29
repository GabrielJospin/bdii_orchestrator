CREATE TABLE smart_home.documentos(
    numero          VARCHAR(50) NOT NULL
,   id_doc_oficial  INTEGER     NOT NULL
,   extra           VARCHAR(45)
,   id_casa         INTEGER     NOT NULL
,   id_morador      INTEGER     NOT NULL
,   PRIMARY KEY(numero)
,   FOREIGN KEY(id_doc_oficial)         REFERENCES smart_home.documentos_oficiais(id_doc_oficiais)
,   FOREIGN KEY(id_casa, id_morador)    REFERENCES smart_home.moradores(id_casa, id_morador)
);