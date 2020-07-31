FROM antelle/keeweb:latest 

ENV LOCALE="en" \
    EXPANDGROUPS=false \
    AUTOSAVE=true \
    AUTOSAVEINTERVAL=1 \
    IDLEMINUTES=15 \
    COLORFULICONS=true \
    SKIPHTTPSWARNING=true \
    DEMOOPENED=false \
    CANOPENDEMO=true \
    CANOPENSETTINGS=true \
    CANCREATE=true \
    CANIMPORTXML=true \
    DROPBOX=true \
    GDRIVE=true \
    ONEDRIVE=true \
    WEBDAV=true \
    WEBDAVSAVEMETHOD="put" \
    KEEPASS_NAME="KEEPASS" \
    KEEPASS_URL="localhost"

COPY ./config/config.json /var/www/html/config.json
COPY ./scripts/21-keepass.sh $START_PATH