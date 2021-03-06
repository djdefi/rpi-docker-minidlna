FROM arm32v7/alpine:3.13

RUN apk add --update-cache bash minidlna && \
rm -rf /var/cache/apk/*

COPY run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
