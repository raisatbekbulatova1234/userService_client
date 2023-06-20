#Build stage

FROM gradle:latest AS BUILD
WORKDIR /UserServiceClient
COPY . .
RUN gradle build

# Package stage
FROM openjdk:19
ENV JAR_NAME=UserServiceClient.jar
ENV APP_HOME=/UserServiceClient/
WORKDIR $APP_HOME
COPY --from=BUILD $APP_HOME .
EXPOSE 8701
ENTRYPOINT exec java -jar $APP_HOME/build/libs/$JAR_NAME