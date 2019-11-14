FROM java:8  
COPY . /Users/a.guindo/Documents/dockerformation
WORKDIR /Users/a.guindo/Documents/dockerformation  
RUN javac PrintHelloDocker.java
CMD ["java", "PrintHelloDocker.java"]  
