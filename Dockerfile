FROM java:8-jdk-alpine

WORKDIR /app

COPY . /app

RUN adduser -D deser

USER deser

ENTRYPOINT ["java", "-jar", "DeserLab.jar", "-server", "0.0.0.0", "4444"]

# run with docker run -dit --rm -p 4444:4444 deser
