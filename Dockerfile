FROM redhat/ubi8
RUN yum install java -y
RUN yum install maven -y
WORKDIR /AKHIL
COPY maven-standalone-app /AKHIL
RUN mvn clean package
CMD ["my-app-1.0-SNAPSHOT.jar"]
ENTRYPOINT /target/"java-jar"
