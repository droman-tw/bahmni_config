#!/bin/bash

psql -Upostgres -c "drop database clinlims;"
cd /opt/bahmni-lab/migrations && scripts/initDB.sh bahmni-base.dump
cd /opt/bahmni-lab/migrations/liquibase/ && /opt/bahmni-lab/migrations/scripts/migrateDb.sh