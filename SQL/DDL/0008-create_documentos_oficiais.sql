CREATE TABLE smart_home.documentos_oficiais(
    id_doc_oficiais     INTEGER         NOT NULL
,   nome                VARCHAR(20)     NOT NULL
,   regex               VARCHAR(100)    NOT NULL
,   unique(id_doc_oficiais)
,   PRIMARY KEY(id_doc_oficiais)
);