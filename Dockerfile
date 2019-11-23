# Commands to know
# to build: docker build -t greeting-svc . where "greeting-svc" can be any name.
# to jump in final container: docker run -it myapp /bin/bash/
# to loginto inside final container: docker run -it myapp /bin/bash/
# to run image: docker run -p 8080:8080 greeting-svc
# to view deployment http://localhost:8080/greeting?name=Raj

FROM amazoncorretto:8

VOLUME /tmp
ARG DEPENDENCY=target
COPY ${DEPENDENCY}/greetings-service-0.2.0.jar /app/

ENTRYPOINT ["java","-jar","/app/greetings-service-0.2.0.jar"]