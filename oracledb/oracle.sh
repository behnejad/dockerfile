#!/bin/bash

DATADIR=$(pwd)/oracledir

sudo mkdir -p $DATADIR
sudo chown -R 54321:54321 $DATADIR

sudo docker run \
 --rm \
 --name oracle \
 --ulimit nofile=65536:65536 \
 -p 1521:1521 \
 -p 5500:5500 \
 -e ORACLE_SID=ORCLCDB \
 -e ORACLE_PDB=ORCLPDB1 \
 -e ORACLE_PWD=password \
 -e ORACLE_EDITION=enterprise \
 -e ORACLE_CHARACTERSET=AL32UTF8 \
 -e ENABLE_ARCHIVELOG=false \
 -v $DATADIR:/opt/oracle/oradata \
container-registry.oracle.com/database/enterprise:21.3.0.0

# -u $(id -u):$(id -g) \
# -e INIT_SGA_SIZE=cdb-database-sga-memory-in-mb \
# -e INIT_PGA_SIZE=cdb-database-pga-memory-in-mb \
# -v /opt/oracle/scripts/startup /docker-entrypoint-initdb.d/startup
# -v /opt/oracle/scripts/setup /docker-entrypoint-initdb.d/setup
# user id 54321
# SYS, SYSTEM, PDBADMIN