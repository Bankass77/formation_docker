FROM java:8  
COPY . /tmp/amadou/java  
WORKDIR /tmp/amadou/java  
RUN javac Hello.java  
CMD ["java", "Hello"]  
