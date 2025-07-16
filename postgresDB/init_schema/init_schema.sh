#!/bin/sh
cd "$(cd "$(dirname "$0")" && pwd)" # trick to get the current location of this script

sh scripts/generate_init_schema_sql.sh

psql -U $POSTGRES_USER -d $POSTGRES_DB -f ./output/init_schema.sql