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

if [ $SLACK_NOTIFY ]; then
    cat /opt/uptime/config/slack.yaml >> /opt/uptime/config/default.yaml

    sed -i -e "s|::SLACK_HOOK::|${SLACK_HOOK}|g" /opt/uptime/config/default.yaml
    sed -i -e "s/::UPTIME_URL::/${UPTIME_URL}/g" /opt/uptime/config/default.yaml
    sed -i -e "s/::SLACK_CHANNEL::/${SLACK_CHANNEL}/g" /opt/uptime/config/default.yaml
    sed -i -e "s/::SLACK_NAME::/${SLACK_NAME}/g" /opt/uptime/config/default.yaml
fi



