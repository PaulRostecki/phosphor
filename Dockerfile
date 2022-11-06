FROM node:12-alpine

WORKDIR /app
COPY . /app

# following best practices and not running as root
RUN adduser -D phosphor && \
    chown -R phosphor:phosphor /app
USER phosphor

RUN npm install

EXPOSE 3000
CMD [ "yarn", "start" ]
