
FROM alpine:latest

COPY --from=gcr.io/kaniko-project/executor:latest /kaniko/executor /kaniko/executor
COPY --from=gcr.io/kaniko-project/executor:latest /kaniko/docker-credential-gcr /kaniko/docker-credential-gcr
COPY --from=gcr.io/kaniko-project/executor:latest /kaniko/docker-credential-ecr-login /kaniko/docker-credential-ecr-login
COPY --from=gcr.io/kaniko-project/executor:latest /kaniko/docker-credential-acr /kaniko/docker-credential-acr
COPY --from=gcr.io/kaniko-project/executor:latest /kaniko/.docker /kaniko/.docker

# RUN apk -U upgrade && \
#   apk add --no-cache libcap && \
#   adduser -D -u 1000 -g 1000 -G root kaniko && \
#   find /kaniko -type d -exec chmod 750 {} \; && \
#   find /kaniko -type f -exec chmod 640 {} \; && \
#   chmod 770 /kaniko && \
#   chmod 750 /kaniko/executor && \
#   setcap CAP_CHOWN,CAP_SETUID,CAP_SETGID,CAP_FOWNER,CAP_DAC_OVERRIDE+ep /kaniko/executor && \
#   apk del libcap

# CMD ["/kaniko/executor"]

# ENV DOCKER_CREDENTIAL_GCR_CONFIG=/kaniko/.config/gcloud/docker_credential_gcr_config.json
# ENV DOCKER_CONFIG=/kaniko/.docker/
# ENV SSL_CERT_DIR=/kaniko/ssl/certs
# ENV PATH=$PATH:/kaniko

# USER kaniko
# WORKDIR /workspace

# ENV HOME=/kaniko
# ENV TZ=Europe/Brussels
