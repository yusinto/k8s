FROM node:latest

COPY package.json yarn.lock /app/
RUN cd /app && yarn
COPY . /app

WORKDIR /app

ENV TZ=Australia/Sydney
RUN npm run build && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

EXPOSE 80
CMD npm start
