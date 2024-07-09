FROM scratch
MAINTAINER Ibrahim COBANI <ibrahim@imaconsult.com>
ENV PORT=8014
COPY api api
ADD ca-certificates.crt /etc/ssl/certs/
EXPOSE $PORT
COPY zoneinfo.zip /
ENV ZONEINFO=/zoneinfo.zip

ENTRYPOINT ["./api"]