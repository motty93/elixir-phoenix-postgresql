-- must change your name and databasename, passward.
CREATE ROLE ecto_app LOGIN PASSWORD 'ecto_app_psql';
CREATE DATABASE ecto_app;
GRANT ALL PRIVILEGES ON DATABASE ecto_app TO ecto_app;
ALTER ROLE ecto_app WITH CREATEROLE CREATEDB SUPERUSER;
