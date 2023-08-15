FROM postgres:latest


COPY ./script.sh /script.sh
ENTRYPOINT [ "/script.sh" ]