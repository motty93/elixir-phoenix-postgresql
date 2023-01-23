-- must change your name and databasename, passward.
CREATE ROLE phoenix_app LOGIN PASSWORD 'phoenix_app_psql';
CREATE DATABASE phoenix_app;
GRANT ALL PRIVILEGES ON DATABASE phoenix_app TO phoenix_app;
ALTER ROLE phoenix_app WITH CREATEROLE CREATEDB SUPERUSER;
