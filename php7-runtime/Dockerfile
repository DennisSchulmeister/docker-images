FROM vdocker.lan/debian-stable:1
LABEL maintainer="Dennis Schulmeister-Zimolong <docker@windows3.de>"

RUN apt-get --no-install-recommends -y update && \
    apt-get --no-install-recommends -y dist-upgrade && \
    apt-get --no-install-recommends -y install php7.0-fpm

RUN apt-get --no-install-recommends -y install php7.0-mysql

RUN rm -rf /usr/share/doc && \
    rm -rf /usr/share/info && \
    rm -rf /usr/share/man && \
    rm -rf /usr/share/vim

RUN mkdir -p /var/www && \
    chown -R www-data:www-data /var/www && \
    mkdir /run/php

# Listen on TCP port 9000 instead of Unix socket
RUN sed -i -E 's/^listen.=.*/listen = 9000/g' /etc/php/7.0/fpm/pool.d/www.conf

# Enable access.log for easier debugging
RUN sed -i -E 's/^;access\.log\s*=.*/access.log = \/var\/log\/$pool.access.log/g' /etc/php/7.0/fpm/pool.d/www.conf
RUN sed -i -E 's/^;access\.format\s*=.*/access.format = "%R - %u %t \\"%m %r\\" -> %f -> %s"/g' /etc/php/7.0/fpm/pool.d/www.conf
RUN sed -i -E 's/^;catch_workers_output\s*=.*/catch_workers_output = yes/g' /etc/php/7.0/fpm/pool.d/www.conf

EXPOSE 9000

VOLUME /etc/php/7.0/fpm
VOLUME /var/www

WORKDIR /var/www

CMD /usr/sbin/php-fpm7.0 --nodaemonize -y /etc/php/7.0/fpm/php-fpm.conf -c /etc/php/7.0/fpm/php.ini
