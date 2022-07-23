FROM node:latest

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 3000
ADD start.sh /start.sh
ENTRYPOINT ["bash", "/start.sh"]
CMD []
