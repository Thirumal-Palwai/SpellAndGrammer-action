FROM jdkato/vale:v2.15.2

COPY ./.vale.ini /root/.vale.ini

COPY ./styles/ /styles/

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN env

RUN pwd

RUN ls -lrth $Home

ENTRYPOINT ["/entrypoint.sh"] 
