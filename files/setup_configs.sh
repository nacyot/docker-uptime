#!/bin/bash

sed -i -e "s/::MONGODB_HOST_PORT::/${MONGODB_HOST_PORT}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::MONGODB_DATABASE::/${MONGODB_DATABASE}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::MONGODB_USER::/${MONGODB_USER}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::MONGODB_PASSWORD::/${MONGODB_PASSWORD}/g" /opt/uptime/config/default.yaml

sed -i -e "s/::EMAIL_SERVICE::/${EMAIL_SERVICE}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::EMAIL_USER::/${EMAIL_USER}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::EMAIL_PASSWORD::/${EMAIL_PASSWORD}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::EMAIL_FROM::/${EMAIL_FROM}/g" /opt/uptime/config/default.yaml
sed -i -e "s/::EMAIL_TO::/${EMAIL_TO}/g" /opt/uptime/config/default.yaml

