FROM postgres:latest

RUN apt update && apt install -y python3 screen

COPY ./entrypoint.sh /entrypoint.sh
COPY ./scripts /scripts

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
