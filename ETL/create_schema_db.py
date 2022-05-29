from connection import connection


def execute_sql(filename):
    conn = connection()
    conn.initizalize()
    conn.execute(filename)
    conn.close()


def create_schema():
    filename = "../SQL/DDL/0001-create_schema.sql"
    execute_sql(filename)


def create_responsaveis():
    filename = "../SQL/DDL/0002-create_responsaveis.sql"
    execute_sql(filename)


def create_casas():
    filename = "../SQL/DDL/0003-create_casas.sql"
    execute_sql(filename)


def crete_moradores():
    filename = "../SQL/DDL/0004-create_moradores.sql"
    execute_sql(filename)


def create_contas_pagar():
    filename = "../SQL/DDL/0005-create_contas_pagar.sql"
    execute_sql(filename)


def create_pagamento():
    filename = "../SQL/DDL/0006-create_pagamentos.sql"
    execute_sql(filename)


def create_contas_banco():
    filename = "../SQL/DDL/0007-create_contas_banco.sql"
    execute_sql(filename)

def create_documentos_oficiais():
    filename = "../SQL/DDL/0008-create_documentos_oficiais.sql"
    execute_sql(filename)


def create_documentos():
    filename = "../SQL/DDL/0009-create_documentos.sql"
    execute_sql(filename)


def create_tarefas():
    filename = "../SQL/DDL/0010-create_tarefas.sql"
    execute_sql(filename)


def create_armazenamento():
    filename = "../SQL/DDL/0011-create_armazenamento.sql"
    execute_sql(filename)


def create_instrumento():
    filename = "../SQL/DDL/0012-create_intrumentos.sql"
    execute_sql(filename)


def create_eletrodomesticos():
    filename = "../SQL/DDL/0013-create_eletrodomesticos.sql"
    execute_sql(filename)


def create_tarefas_instrumentos():
    filename = "../SQL/DDL/0014-create_tarefas_instromentos.sql"
    execute_sql(filename)


def create_itens():
    filename = "../SQL/DDL/0015-create_itens.sql"
    execute_sql(filename)


def create_tarefas_itens():
    filename = "../SQL/DDL/0016-create_tarefas_itens.sql"
    execute_sql(filename)

def create_local_venda():
    filename = "../SQL/DDL/0018-create_local_venda.sql"
    execute_sql(filename)

def create_compras():
    filename = "../SQL/DDL/0019-compras.sql"
    execute_sql(filename)