FROM node:14-alpine

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 9002

ENV NAME amorserv-docker-node-app
ENV PORT=9002
ENV DBURI=mongodb+srv://amorserv-db:rIb4S8f4EkRei3PA@cluster0.vtauxfw.mongodb.net/AmorservDB?retryWrites=true&w=majority
ENV TEST_DBURI=mongodb+srv://amorserv-db:rIb4S8f4EkRei3PA@cluster0.vtauxfw.mongodb.net/AmorservDB?retryWrites=true&w=majority
ENV SECRET=some-secret-key

CMD [ "npm", "start"]