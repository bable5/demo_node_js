FROM node:8.11.1-alpine as builder

WORKDIR /build
COPY ./ /build

RUN npm install --production
# Simulate some build step by copying src to lib.
# This step might include babeling and webpacking files.
RUN npm run dist

FROM node:8.11.1-alpine

# Create a group and user to isolate the running process
RUN addgroup -S app && adduser -S -G app app && \
    mkdir -p /app
WORKDIR /app

COPY --from=builder /build/package.json /app
COPY --from=builder /build/node_modules /app/node_modules
COPY --from=builder /build/lib /app/lib
RUN chown -R app:app /app
EXPOSE 8080

CMD ["npm", "start"]
