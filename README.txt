================
Wichtige Befehle
================

Login bei der eigenen Registry:
  sudo docker login vdocker.lan

Registry manuell abfragen:
  http --verify=no --auth=dennis:*** https://vdocker.lan/v2/_catalog

Hochladen eines Images:
  sudo docker push vdocker.lan/php7-runtime:1

Runterladen eines Images:
  sudo docker pull vdocker.lan/php7-runtime:1

Bauen eines Images:
  cd apache-httpd
  sudo docker -t vdocker.lan/apache-httpd:2 ./

Bauen über ein Skript vereinfacht
(damit die Versionsnummer hochgezählt werden kann):
  cd apache-httpd
  ./build.sh

Interaktiver Start eines Wegwerf-Containers:
  sudo docker run -it --rm -n test debian-stable

  >>> -i   = Interaktiv
  >>> -t   = Mit TTY-Simulation
  >>> --rm = Container nach dem Ende sofort löschen
  >>> -n   = Eigenen Namen für den Container vergeben

Weitere wichtige Parameter:

  >>> -v /host:/container    Bind-Mount von /host nach /container im Container
  >>> -p 8080:5000           Port 5000 des Containers über Host-Port 8080 aufrufbar machen
  >>> -e "NAME=Wert"         Umgebungsvariable im Container setzen

  >>> -mount type=bind,src=/h,dst=/c    Langform eines Bind-Mounts

Vorhandene Images/Container auflisten:
  sudo docker container ls
  sudo docker image ls

Logs eines laufenen Containers anzeigen:
  sudo docker logs NAME

Program in laufendem Container starten:
  sudo docker exec NAME PROGRAM

Images/Container löschen:
  sudo docker container rm NAME
  sudo docker image rm NAME

  sudo docker container prune
  sudo docker image prune

Volumes untersuchen:
  sudo docker volume ls
  sudo docker volume inspect 1d4c...guid

Einfach mal alles aufräumen:
  sudo docker system prune
