FROM vdocker.lan/debian-stable:1
LABEL maintainer="Dennis Schulmeister-Zimolong <docker@windows3.de>"

RUN apt-get --no-install-recommends -y update && \
    apt-get --no-install-recommends -y dist-upgrade && \
    apt-get --no-install-recommends -y install mariadb-server mariadb-client

RUN rm -rf /usr/share/doc && \
    rm -rf /usr/share/info && \
    rm -rf /usr/share/man && \
    rm -rf /usr/share/vim

RUN mkdir -p /var/run/mysqld && \
    mkdir -p /var/log/mysql && \
    chown -R mysql:mysql /var/run/mysqld && \
    chown -R mysql:mysql /var/log/mysql

# Bind to all network interfaces
RUN sed -i -E 's/^bind-address\s*=.*$/bind-address = ::/g' /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

VOLUME /etc/mysql/mariadb.conf.d
VOLUME /var/lib/mysql
VOLUME /var/log/mysqld

CMD mysqld
