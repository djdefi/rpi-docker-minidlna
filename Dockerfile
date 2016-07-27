FROM djdefi/rpi-alpine

RUN apk update && \
apk upgrade && \
apk add bash minidlna && \
rm -rf /var/cache/apk/*

COPY run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
