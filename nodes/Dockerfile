FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

RUN wget https://multipaper.io/api/v2/projects/multipaper/versions/1.19.2/builds/37/downloads/multipaper-1.19.2-37.jar

COPY start.sh .
COPY eula.txt .
COPY plugins plugins

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]