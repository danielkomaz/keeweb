#!/bin/sh
set -e

#KEEPASS_NAME=${KEEPASS_NAME:-$(tr -cd [:alnum:] < /dev/urandom | fold -w20 | head -n1)}
#KEEPASS_URL=${KEEPASS_URL:-$(tr -cd [:alnum:] < /dev/urandom | fold -w20 | head -n1)}

sed -i "s/(no-config)/config\.json/g" /var/www/html/index.html
sed -i "s/\"LOCALE\"/${LOCALE}/g" /var/www/html/config.json
sed -i "s/\"EXPANDGROUPS\"/${EXPANDGROUPS}/g" /var/www/html/config.json
sed -i "s/\"AUTOSAVE\"/${AUTOSAVE}/g" /var/www/html/config.json
sed -i "s/\"AUTOSAVEINTERVAL\"/${AUTOSAVEINTERVAL}/g" /var/www/html/config.json
sed -i "s/\"IDLEMINUTES\"/${IDLEMINUTES}/g" /var/www/html/config.json
sed -i "s/\"COLORFULICONS\"/${COLORFULICONS}/g" /var/www/html/config.json
sed -i "s/\"SKIPHTTPSWARNING\"/${SKIPHTTPSWARNING}/g" /var/www/html/config.json
sed -i "s/\"DEMOOPENED\"/${DEMOOPENED}/g" /var/www/html/config.json
sed -i "s/\"CANOPENDEMO\"/${CANOPENDEMO}/g" /var/www/html/config.json
sed -i "s/\"CANOPENSETTINGS\"/${CANOPENSETTINGS}/g" /var/www/html/config.json
sed -i "s/\"CANCREATE\"/${CANCREATE}/g" /var/www/html/config.json
sed -i "s/\"CANIMPORTXML\"/${CANIMPORTXML}/g" /var/www/html/config.json
sed -i "s/\"DROPBOX\"/${DROPBOX}/g" /var/www/html/config.json
sed -i "s/\"GDRIVE\"/${GDRIVE}/g" /var/www/html/config.json
sed -i "s/\"ONEDRIVE\"/${ONEDRIVE}/g" /var/www/html/config.json
sed -i "s/\"WEBDAV\"/${WEBDAV}/g" /var/www/html/config.json
sed -i "s/\"WEBDAVSAVEMETHOD\"/${WEBDAVSAVEMETHOD}/g" /var/www/html/config.json
sed -i "s/\"KEEPASS_NAME\"/${KEEPASS_NAME}/g" /var/www/html/config.json
sed -i "s/\"KEEPASS_URL\"/\"https\:\/\/${KEEPASS_URL}\/webdav\/Database1.kdbx\"/g" /var/www/html/config.json

echo '{"settings": {}}' | jq --arg city "$city" '{"settings": {"location":$city}}'