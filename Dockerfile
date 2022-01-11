FROM openjdk:jre-alpine
LABEL author="Alexandre Hamelin <alexandre.hamelin gmail.com>" \
      maintainer="Alexandre Hamelin <alexandre.hamelin gmail.com>" \
      copyright="Copyright (c) 2022, Alexandre Hamelin <alexandre.hamelin gmail.com>" \
      license="MIT"

RUN apk --no-cache add bash ncurses
WORKDIR /sqlcl
RUN adduser -D sqlcl && chown sqlcl:sqlcl /sqlcl
USER sqlcl
RUN echo "Downloading..." && wget -q --no-check https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-latest.zip && \
    echo "Unzipping in /sqlcl..." && unzip sqlcl-latest.zip -d / >/dev/null && \
    rm -f sqlcl-latest.zip
ENTRYPOINT ["/sqlcl/bin/sql"]
