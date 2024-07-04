ARG POSTGRES_VERSION
ARG POSTGIS_VERSION
FROM postgis/postgis:${POSTGRES_VERSION}-${POSTGIS_VERSION}
ARG POSTGRES_VERSION
ARG POSTGIS_VERSION

RUN apt-get update \
      && apt-cache showpkg postgresql-${POSTGRES_VERSION}-pgtap \
      && apt-get install -y --no-install-recommends postgresql-${POSTGRES_VERSION}-pgtap \
      && rm -rf /var/lib/apt/lists/*

COPY ./initdb-pgtap.sh /docker-entrypoint-initdb.d/20_pgtap.sh
