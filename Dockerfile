FROM node:alpine

WORKDIR /jamnik

# Copy package files
COPY jamnik/package*.json ./

RUN npm install || true

COPY jamnik/ .

EXPOSE 3000

CMD ["node", "app.js"]
