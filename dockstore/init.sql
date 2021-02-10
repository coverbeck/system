create user dockstore with password 'dockstore' createdb;
drop database webservice_test;
create database webservice_test with owner = dockstore;
