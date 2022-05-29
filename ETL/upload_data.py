from connection import connection


def execute_sql(filename):
    conn = connection()
    conn.initizalize()
    conn.execute(filename)
    conn.close()


def upload_responsaveis():
    filename = "../SQL/DML/0001-upload_responsaveis.sql"
    execute_sql(filename)


def upload_casas():
    filename = "../SQL/DML/0002-upload_casas.sql"
    execute_sql(filename)


def upload_moradores():
    filename = "../SQL/DML/0003-upload_moradores.sql"
    execute_sql(filename)


def upload_contas_pagar():
    filename = "../SQL/DML/0004-upload_contas_pagar.sql"
    execute_sql(filename)


def upload_pagamentos():
    filename = "../SQL/DML/0005-upload_pagamentos.sql"
    execute_sql(filename)


def upload_contas_banco():
    filename = "../SQL/DML/0006-upload_contas_banco.sql"
    execute_sql(filename)


def upload_documentos_oficiais():
    filename = "../SQL/DML/0007-upload_documentos_oficiais.sql"
    execute_sql(filename)


def upload_documentos():
    filename = "../SQL/DML/0008-upload_documentos.sql"
    execute_sql(filename)


def upload_tarefas():
    filename = "../SQL/DML/0009-upload_tarefas.sql"
    execute_sql(filename)


def upload_armazenamento():
    filename = "../SQL/DML/0010-upload_armazenamento.sql"
    execute_sql(filename)


def uplaod_instrumentos():
    filename = "../SQL/DML/0011-upload_instrumentos.sql"
    execute_sql(filename)


def uplaod_tarefa_instrumentos():
    filename = "../SQL/DML/0012-upload_tarefa_instrumento.sql"
    execute_sql(filename)


def uplaod_itens():
    filename = "../SQL/DML/0013-upload_itens.sql"
    execute_sql(filename)


def upload_tarefas_itens():
    filename = "../SQL/DML/0014-upload_tarefas_itens.sql"
    execute_sql(filename)


def upload_local_vendas():
    filename = "../SQL/DML/0015-upload_local_vendas.sql"
    execute_sql(filename)


def upload_compras():
    filename = "../SQL/DML/0016-upload_compras.sql"
    execute_sql(filename)
