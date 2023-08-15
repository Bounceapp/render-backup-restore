FROM postgres:latest

RUN apt update && apt install -y python3

COPY ./script.sh /script.sh

ENTRYPOINT [ "bash", "/script.sh" ]
