FROM java:8
ADD ./target/kgdrugs-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD java -jar app.jar --spring.profiles.active=prod
