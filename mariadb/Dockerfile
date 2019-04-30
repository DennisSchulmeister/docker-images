FROM vdocker.lan/debian-stable:1
LABEL maintainer="Dennis Schulmeister-Zimolong <docker@windows3.de>"

RUN apt-get --no-install-recommends -y update && \
    apt-get --no-install-recommends -y dist-upgrade && \
    apt-get --no-install-recommends -y install mariadb-server mariadb-client

RUN rm -rf /usr/share/doc && \
    rm -rf /usr/share/info && \
    rm -rf /usr/share/man && \
    rm -rf /usr/share/vim

COPY mysql.cnf /etc/mysql/conf.d

VOLUME /var/lib/mysql

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe", "--console"]
