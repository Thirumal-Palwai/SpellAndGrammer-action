FROM jdkato/vale

COPY ./.vale.ini /root/.vale.ini

COPY ./styles/ /styles/

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
