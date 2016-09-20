FROM node:4.1.2

RUN groupadd -r app && useradd -r -g app app && \
    mkdir -p /app
WORKDIR /app

COPY ./package.json /app
COPY ./node_modules /app/node_modules
COPY ./src /app/src
RUN chown -R app:app /app
EXPOSE 8080

CMD ["npm", "start"]

