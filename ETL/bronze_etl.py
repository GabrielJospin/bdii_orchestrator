import logging
import upload_data as upd

def etl():
    logging.basicConfig(level=logging.WARNING, force=True)
    logger = logging.getLogger(__name__)
    logger.setLevel(logging.INFO)

    logger.info("upload data init")
    upd.upload_responsaveis()
    logger.info("responsaveis uploadd")
    upd.upload_casas()
    logger.info("casas upload")
    upd.upload_moradores()
    logger.info("moradores upload")
    upd.upload_contas_pagar()
    logger.info("contas pagar upload")
    upd.upload_pagamentos()
    logger.info("pagamentos upload")
    upd.upload_contas_banco()
    logger.info("contas banco upload")
    upd.upload_documentos_oficiais()
    logger.info("documentos oficiais upload")
    upd.upload_documentos()
    logger.info("documentos upload")
    upd.upload_tarefas()
    logger.info("upload tarefas")
    upd.upload_armazenamento()
    logger.info("armazenamento upload")
    upd.uplaod_instrumentos()
    logger.info("instrumentos upload")
    upd.uplaod_tarefa_instrumentos()
    logger.info("tarefas intrumentos upload")
    upd.uplaod_itens()
    logger.info("itens upload")
    upd.upload_tarefas_itens()
    logger.info("Tarefas itens upload")
    upd.upload_local_vendas()
    logger.info("local venda upload")
    upd.upload_compras()
    logger.info("compras upload")
    logger.info("General Kenobi!")



if __name__ == '__main__':
    etl()