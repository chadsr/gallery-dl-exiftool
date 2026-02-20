FROM mikf123/gallery-dl:v1.31.6

RUN : \
    && apk --no-interactive update \
    && apk --no-interactive --no-cache add exiftool \
    && rm -rf /var/cache/apk \
    && :

ENTRYPOINT [ "gallery-dl" ]