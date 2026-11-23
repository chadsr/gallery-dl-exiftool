FROM mikf123/gallery-dl:v1.32.20

RUN : \
    && apk --no-interactive update \
    && apk --no-interactive --no-cache add exiftool=13.55-r0 \
    && rm -rf /var/cache/apk \
    && :

ENTRYPOINT [ "gallery-dl" ]