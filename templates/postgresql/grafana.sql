CREATE USER grafana WITH PASSWORD 'OtusHL' CREATEDB;
CREATE DATABASE grafana TEMPLATE template0 ENCODING 'UTF8';
ALTER DATABASE grafana OWNER TO grafana;
GRANT ALL PRIVILEGES ON DATABASE grafana TO grafana;
GRANT ALL PRIVILEGES ON SCHEMA public TO grafana;