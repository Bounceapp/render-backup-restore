FROM postgres:latest

RUN apt update && apt install -y python3 screen

COPY ./script.sh /script.sh
COPY ./dump.sh /dump.hs

ENTRYPOINT [ "bash", "/script.sh" ]
