FROM adoptopenjdk/openjdk11

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean

EXPOSE 8081

ENV APP_HOME=/usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
