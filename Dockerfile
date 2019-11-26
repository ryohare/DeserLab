FROM java:8-jdk-alpine

WORKDIR /app

COPY . /app

ENTRYPOINT ['java', '-jar', 'DeserLab.jar', '-server', '4444']
