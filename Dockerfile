FROM mariadb:latest

COPY data.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE test
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD admin
