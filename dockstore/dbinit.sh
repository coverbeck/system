#!/bin/bash
DBSCRIPT=$1
if [ -z "$DBSCRIPT" ]
then
    echo "Specify SQL as param, e.g., dbinit Downloads/ds-webservice_prod_2018-07-09T00-00-01+0000.sql"
    exit 1
fi
docker exec -i postgres1 psql -U postgres < init.sql
docker exec -i postgres1 psql webservice_test -U postgres < $DBSCRIPT
WS_JAR=`find ~/git/ga4gh/dockstore/dockstore-webservice/target/d*SNAPSHOT.jar`
java -jar $WS_JAR db migrate ~/.dockstore/dockstore.yml  --include 1.5.0
