#Image de base
FROM ubuntu
MAINTENAIR amadouguindo
# Update et installation dejava 1.8
RUN  apt-get update && install java:8
# Nettoyage du gestionnaire de package
RUN apt-get clean
# Copie du repertoire courant
COPY . /Users/a.guindo/Documents/dockerformation
# On expose le port 8080
EXPOSE 8080
# On partage un dossier de log
VOLUME /
# Changement du repertoire courant
WORKDIR /Users/a.guindo/Documents/dockerformation  
# Exécution  de la classe pricipale
RUN javac PrintHelloDocker.java
# lancement de la classe contenant le main java sur le shell
CMD ["java", "PrintHelloDocker.java"]  
