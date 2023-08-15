FROM postgres:latest


COPY ./script.sh /script.sh

ENTRYPOINT [ "bash", "/script.sh" ]
