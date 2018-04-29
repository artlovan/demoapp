FROM java:alpine
ARG PATH_TO_JAR_NAME
COPY ./${PATH_TO_JAR_NAME} /app.jar
ENTRYPOINT java -jar /app.jar