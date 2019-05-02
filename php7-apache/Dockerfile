FROM vdocker.lan/debian-stable:1
LABEL maintainer="Dennis Schulmeister-Zimolong <docker@windows3.de>"

RUN apt-get --no-install-recommends -y update && \
    apt-get --no-install-recommends -y dist-upgrade && \
    apt-get --no-install-recommends -y install apache2 && \
    a2enmod http2 && \
    a2enmod rewrite && \
    a2enmod ssl

RUN apt-get --no-install-recommends -y install php7.0 && \
    apt-get --no-install-recommends -y install php7.0-mysql

RUN rm -rf /usr/share/doc && \
    rm -rf /usr/share/info && \
    rm -rf /usr/share/man && \
    rm -rf /usr/share/vim

RUN rm -rf /etc/apache2/sites-enabled/* && \
    rm -rf /etc/apache2/sites-available/* && \
    rm -rf /var/www/*

COPY www/index.php /var/www
COPY apache/default.conf /etc/apache2/sites-available
RUN a2ensite default

VOLUME /var/www
VOLUME /etc/apache2/sites-available
VOLUME /etc/apache2/sites-enabled
VOLUME /etc/apache2/certs
VOLUME /etc/php/7.0/

EXPOSE 80
EXPOSE 443

WORKDIR /var/www

CMD mkdir -p /var/log/apache2; apachectl -DFOREGROUND
