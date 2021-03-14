FROM node:lts-alpine3.12

RUN apk update
RUN apk add git

WORKDIR /getting-started

RUN git clone https://github.com/hakimel/reveal.js.git .
RUN npm install

COPY src/0000-getting-started/index.html  index.html
COPY src/0000-getting-started/img         img

EXPOSE 8000

CMD ["npm", "start"]
