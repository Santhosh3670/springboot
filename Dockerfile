FROM openjdk:17-jdk
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java", "--add-opens", "java.base/java.lang=ALL-UNNAMED", "--add-opens", "java.base/java.util=ALL-UNNAMED", "-jar", "app.jar"]i
