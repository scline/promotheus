# https://github.com/prometheus/snmp_exporter/blob/master/generator/Dockerfile

FROM golang:latest

RUN apt-get update && \
    apt-get install -y libsnmp-dev p7zip-full && \
    go get github.com/prometheus/snmp_exporter/generator && \
    cd /go/src/github.com/prometheus/snmp_exporter/generator && \
    go get -v . && \
    go install

WORKDIR "/opt"

COPY generator.yml generator.yml
COPY mibs/ mibs/

ENV MIBDIRS mibs

ENTRYPOINT ["/go/bin/generator"]

CMD ["generate"]