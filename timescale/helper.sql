CREATE USER your_new_username WITH PASSWORD 'your_secure_password';
GRANT CONNECT ON DATABASE your_database_name TO your_new_username;
GRANT USAGE ON SCHEMA public TO your_new_username;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO your_new_username;
GRANT ALL PRIVILEGES ON DATABASE "test_database" to tester;
SELECT show_chunks('settlementservices-bad', newer_than => '-infinity', older_than => 'infinity');
select * from _timescaledb_internal._hyper_16_2639_chunk limit 10;

SELECT create_hypertable('conditions', by_range('time'));
SELECT create_hypertable('my_table', 'time');
CREATE INDEX IF NOT EXISTS usage_metric ON my_table (metric, time DESC);

CREATE DATABASE tablename
    OWNER = username
    TEMPLATE = template0
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8';
ALTER DATABASE databasename OWNER TO usermane;

\c my_db
CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;

command: postgres -c shared_preload_libraries=timescaledb
sudo -u postgres createuser --interactive --pwprompt
