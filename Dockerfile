FROM java:8-jdk-alpine

WORKDIR /app

COPY . /app

RUN adduser -D deser

USER deser

ENTRYPOINT ["java", "-jar", "DeserLab.jar", "-server", "0.0.0.0", "4444"]
