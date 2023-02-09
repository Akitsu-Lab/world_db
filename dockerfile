FROM mysql:8.0

# docker-compose.ymlで指定したらいらないかも
ENV MYSQL_ROOT_PASSWORD rootpass
ENV MYSQL_DATABASE world
ENV MYSQL_USER user
ENV MYSQL_PASSWORD user

COPY ./config/my.conf /etc/mysql/conf.d/my.cnf
COPY init/* /docker-entrypoint-initdb.d/
CMD ["mysqld"]


