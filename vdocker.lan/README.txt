Diese Datei muss auf den einzelnen Docker Hosts nach

  /etc/docker/certs.d/vdocker.lan/ca.crt

kopiert werden, damit der SSL-Zugriff auf die Registry
unter vdocker.lan funktioniert. Grund ist das selbst-
signierte Zertifikat der Registry.

Ein paar wichtige Befehle:

$ docker login vdocker.lan
$ docker pull ubuntu:16.04
$ docker tag ubuntu:16.04 vdocker.lan/my-ubuntu
$ docker push vdocker.lan/my-ubuntu
$ docker pull vdocker.lan/my-ubuntu
