FROM vdocker.lan/debian-stable:1
LABEL maintainer="Dennis Schulmeister-Zimolong <docker@windows3.de>"

RUN apt-get --no-install-recommends -y update && \
    apt-get --no-install-recommends -y dist-upgrade && \
    apt-get --no-install-recommends -y install apache2 && \
    a2enmod http2 && \
    a2enmod proxy && \
    a2enmod proxy_fcgi && \
    a2enmod proxy_http && \
    a2enmod proxy_http2 && \
    a2enmod proxy_scgi && \
    a2enmod proxy_wstunnel && \
    a2enmod rewrite && \
    a2enmod ssl

RUN rm -rf /usr/share/doc && \
    rm -rf /usr/share/info && \
    rm -rf /usr/share/man && \
    rm -rf /usr/share/vim

VOLUME /var/www
VOLUME /etc/apache2/sites-available
VOLUME /etc/apache2/sites-enabled
VOLUME /etc/apache2/certs

EXPOSE 80
EXPOSE 443

WORKDIR /var/www

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
