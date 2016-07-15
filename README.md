# minidnla in docker for Raspberry Pi / armhf

Based on https://github.com/bobrik/docker-minidlna

This is minidlna on top of Alpine Linux.
It can be configured with environment variables.

## Usage

Prefix any config directive of minidlna with `MINIDLNA_`
and run your container:

```
docker run -d --net=host -v <media dir on host>:/media \
    -e MINIDLNA_MEDIA_DIR=/media \
    -e MINIDLNA_LISTENING_IP=192.168.0.5 \
    -e MINIDLNA_PORT=8200 \
    -e MINIDLNA_FRIENDLY_NAME=callisto \
    bobrik/minidlna
```

See: http://manpages.ubuntu.com/manpages/raring/man5/minidlna.conf.5.html

Let me know if you figure out how to run it without `--het=host`.
