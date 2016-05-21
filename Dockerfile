FROM node:5.11.1

RUN mkdir -p /usr/src/ghost
RUN git clone https://github.com/pentateu/Ghost.git /usr/src/ghost
WORKDIR /usr/src/ghost
RUN ls
RUN npm install --production

CMD [ "npm", "start", "--production" ]
