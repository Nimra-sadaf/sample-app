FROM openjdk:17
COPY . /app
WORKDIR /app
RUN javac App.java
CMD ["java", "App"]
