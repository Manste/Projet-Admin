#!/bin/bash

# Initialisation

service mysql start

mysql -u root -p mdp

# Create the database

mysql -u root -p mdp < /tmp/db_schema.sql

# start db

mysqladmin --password=mdp shutdown

