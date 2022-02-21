FROM ubuntu

RUN apt update

RUN apt -y install

RUN curl -sfL https://install.goreleaser.com/github.com/ValeLint/vale.sh | sh -s v2.9.1

RUN export PATH="./bin:$PATH"

COPY . .

RUN pwd

RUN ls -lrth

RUN vale .

ENTRYPOINT ["/usr/bin/bash vale ."] 
