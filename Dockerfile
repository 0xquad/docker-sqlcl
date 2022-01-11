FROM openjdk:17-alpine
LABEL author="Alexandre Hamelin <alexandre.hamelin gmail.com>" \
      maintainer="Alexandre Hamelin <alexandre.hamelin gmail.com>" \
      copyright="Copyright (c) 2022, Alexandre Hamelin <alexandre.hamelin gmail.com>" \
      license="MIT"

RUN apk --no-cache add bash ncurses
RUN wget -q --no-check https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-latest.zip && \
    unzip sqlcl-latest.zip && \
    rm -f sqlcl-latest.zip
ENTRYPOINT ["/sqlcl/bin/sql"]
