FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

RUN wget https://multipaper.io/api/v2/projects/multipaper/versions/1.19.2/builds/37/downloads/MultiPaper-Master-2.10.1-all.jar

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 25565
EXPOSE 35353

CMD ["./start.sh"]