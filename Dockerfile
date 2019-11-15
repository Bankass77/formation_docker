FROM ubuntu
RUN  apt-get update && install java:8
RUN CLEAN
COPY . /Users/a.guindo/Documents/dockerformation
WORKDIR /Users/a.guindo/Documents/dockerformation  
RUN javac PrintHelloDocker.java
CMD ["java", "PrintHelloDocker.java"]  
