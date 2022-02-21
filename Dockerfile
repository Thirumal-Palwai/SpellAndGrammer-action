FROM ubuntu

RUN apt update

RUN apt -y install curl

RUN curl -sfL https://install.goreleaser.com/github.com/ValeLint/vale.sh | sh -s v2.9.1

RUN export PATH="./bin:$PATH"

COPY . .

ENTRYPOINT [/bin/bash -c "pwd && ls -lrth && vale ."]
