psql -c "drop database webservice_test;" -U charlesoverbeck postgres
psql -c "create user dockstore with password 'dockstore' createdb;" -U charlesoverbeck postgres
psql -c "ALTER USER dockstore WITH superuser;" -U charlesoverbeck postgres
psql -c 'create database webservice_test with owner = dockstore;' -U charlesoverbeck postgres
