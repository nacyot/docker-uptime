#!/bin/bash

docker run -it \
    -p 8082:8082 \
    -e MONGODB_HOST_PORT='172.17.42.1:27017' \
    -e MONGODB_DATABASE=uptime \
    -e MONGODB_USER=root \
    -e SLACK_NOTIFY=TRUE \
    -e SLACK_HOOK='hooks.slack.com/services/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' \
    -e UPTIME_URL='http:\/\/uptime.devops.cleve.re' \
    -e SLACK_CHANNEL='#test' \
    -e SLACK_NAME='Uptime' \
    nacyot/uptime

    # -e EMAIL_SERVICE=Gmail \
    # -e EMAIL_USER='propellerheaven@gmail.com' \
    # -e EMAIL_PASSWORD='!enyteitpd@' \
    # -e EMAIL_FROM='Daekwon Kim <propellerheaven@gmail.com>' \
    # -e EMAIL_TO='propellerheaven@gmail.com' \
