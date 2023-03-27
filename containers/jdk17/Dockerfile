ARG APP_IMAGE=amazoncorretto:17-alpine-jdk
FROM $APP_IMAGE

# ARG PROXY=""

USER root

# ENV http_proxy $PROXY
# ENV https_proxy $PROXY

RUN apk -U upgrade && \
    adduser -h /home/jenkins -D -u 1000 jenkins


USER jenkins
WORKDIR /home/jenkins

ENV TZ=Europe/Brussels
