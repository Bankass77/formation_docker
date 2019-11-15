#Image de base
FROM ubuntu
# Update et installation dejava 1.8
RUN  apt-get update && install java:8
# Nettoyage du gestionnaire de package
RUN CLEAN
# Copie du repertoire courant
COPY . /Users/a.guindo/Documents/dockerformation
# Changement du repertoire courant
# Changement du repertoire courant
WORKDIR /Users/a.guindo/Documents/dockerformation  
# Exécution  de la classe pricipale
RUN javac PrintHelloDocker.java
# lancement de la classe contenant le main java sur le shell
CMD ["java", "PrintHelloDocker.java"]  
