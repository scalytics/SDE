FROM postgres:latest

ENV POSTGRES_USER=blossomuser
ENV POSTGRES_PASSWORD=blossomuserpwd23y938
ENV POSTGRES_DB=tpchdb

COPY ./init_customer.sql ./customer.tbl /docker-entrypoint-initdb.d/
COPY ./init_orders.sql ./orders.tbl /docker-entrypoint-initdb.d/