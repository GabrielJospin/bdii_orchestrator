import logging
import golden_etl as golden
import bronze_etl as bronze

logging.basicConfig(level=logging.WARNING, force=True)
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

def orchestrator():
    logger.info("INIT ETL ORCHESTRATOR")
    logger.info("first we upload the tables")
    golden.etl(None, None)
    logger.info("Table created")
    logger.info("Now er upload data")
    bronze.etl()
    logger.info("Fisish, you can use")


if __name__ == "__main__":
    orchestrator()