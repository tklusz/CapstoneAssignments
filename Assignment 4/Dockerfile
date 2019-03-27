FROM ubuntu:latest

COPY scripts ./scripts

RUN chmod +x scripts/install-script.sh & chmod +x scripts/run-script.sh
RUN sh scripts/install-script.sh

CMD sh scripts/run-script.sh
