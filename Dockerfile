FROM alvistack/openjdk-16
EXPOSE 8088
ADD target/my-app.jar my-app.jar
CMD java -jar my-app.jar