FROM ubuntu:latest

COPY scripts ./scripts

RUN chmod +x scripts/install-script.sh & chmod +x scripts/run-script.sh
RUN sh scripts/install-script.sh

COPY prometheus.yml /prometheus-2.8.0.linux-amd64/prometheus.yml

CMD sh scripts/run-script.sh
