FROM dockerfile/ubuntu
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN \
  cd /opt &&\
  wget -O /opt/nodejs.tar.gz http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz &&\
  tar xvf nodejs.tar.gz &&\
  mv /opt/node-v0.10.33-linux-x64 /opt/nodejs &&\
  bash -c "ln -s /opt/nodejs/bin/{node,npm} /usr/local/bin/"

RUN \
  apt-get update &&\
  apt-get install -y mongodb git python

RUN \
  mkdir /opt/uptime &&\
  git clone https://github.com/fzaninotto/uptime.git /opt/uptime &&\
  cd /opt/uptime &&\
  npm install

ENV MONGODB_HOST_PORT localhost
ENV MONGODB_DATABASE uptime
ENV MONGODB_USER root
# ENV MONGODB_PASSWORD

ENV EMAIL_SERVICE Gmail
# ENV EMAIL_USER
# ENV EMAIL_PASSWORD
# ENV EMAIL_FROM
# ENV EMAIL_TO

ADD ./files/ /root/files
RUN \
  chmod +x /root/files/*.sh &&\
  mv /root/files/default.yaml /opt/uptime/config/default.yaml

EXPOSE 8082
CMD /root/files/setup_configs.sh && /root/files/run.sh

