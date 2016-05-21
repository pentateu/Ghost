FROM node:5.11.0

RUN mkdir -p /usr/src/ghost
RUN git clone https://github.com/pentateu/Ghost.git /usr/src/ghost
WORKDIR /usr/src/ghost
RUN ls
RUN npm install
RUN npm install -g grunt-cli
RUN grunt init
RUN grunt prod
CMD [ "npm", "start", "--production" ]
