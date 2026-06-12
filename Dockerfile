FROM mongo:7.0
LABEL maintainer="Translogix TMS"
LABEL description="Base de datos MongoDB para el sistema de logística Translogix TMS"
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=translogix2026
ENV MONGO_INITDB_DATABASE=translogix_db
COPY translogix_seed.js /docker-entrypoint-initdb.d/01_translogix_seed.js

EXPOSE 27017

VOLUME ["/data/db"]
