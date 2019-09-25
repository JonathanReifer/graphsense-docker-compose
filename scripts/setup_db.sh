#!/bin/sh

docker-compose exec gs-glue cqlsh gs-database -f /graphsense-transformation/scripts/schema_raw.cql


docker-compose exec gs-glue cqlsh gs-database -f /graphsense-transformation/scripts/schema_transformed.cql



