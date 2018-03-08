FROM node:latest

COPY package.json yarn.lock /app/

# install all dependencies including devdeps so we can run build
RUN cd /app && yarn

# Copy all our code (yes including package.json again) to the /app dir on the image
COPY . /app

# Change directory into the /app folder so we can execute npm commands
WORKDIR /app

# Set timezone to GMT+10 (Sydney Australia)
# Ripped from http://serverfault.com/questions/683605/docker-container-time-timezone-will-not-reflect-changes
ENV TZ=Australia/Sydney

# Produce the main bundled js (server and client) and css files.
RUN npm run build && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

EXPOSE 80

CMD npm start
