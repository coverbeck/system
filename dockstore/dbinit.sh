#!/bin/bash
DBSCRIPT=$1
if [ -z "$DBSCRIPT" ]
then
    echo "Specify SQL as param, e.g., dbinit Downloads/ds-webservice_prod_2018-07-09T00-00-01+0000.sql"
    exit 1
fi
docker exec -i postgres1 psql -U postgres < init.sql
docker exec -i postgres1 bash -c "PGPASSWORD='dockstore' psql webservice_test -U dockstore" < $DBSCRIPT
#scripts/migrate.sh
