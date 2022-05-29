import os.path

import psycopg


class connection:

    def __init__(self):
        self.conn = None

    def initizalize(self):
        self.conn = psycopg.connect(dbname="bdii", host='localhost', user='postgres', password='1234', port='5432')

    def execute(self, filename):
        with self.conn:
            with self.conn.cursor() as curs:
                curs.execute(open(filename, "r").read())

    def close(self):
        self.conn.close()