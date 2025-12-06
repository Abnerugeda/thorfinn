curl -X POST http://debezium-connect:8083/connectors \
  -H "Content-Type: application/json" \
  -d '{
    "name": "postgres-thorfinn-connector",
    "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "database.hostname": "postgres",
      "database.port": "5432",
      "database.user": "root",
      "database.password": "root",
      "database.dbname": "thorfinn",
      "database.server.name": "pgserver1",
      "slot.name": "debeziumslot",
      "plugin.name": "pgoutput",
      "table.include.list": "public.customers",
      "publication.autocreate.mode": "filtered",
      "topic.prefix": "thorfinn",
      "publication.name": "dbz_publication"
    }
  }'
