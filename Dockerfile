FROM openjdk:11

RUN useradd -ms /bin/bash appuser
USER appuser
ENV APP_HOME=/home/appuser
WORKDIR /home/appuser

COPY ./build/libs/* ./spring-boot.jar
EXPOSE 8080
CMD ["java","-jar","spring-boot.jar"]
