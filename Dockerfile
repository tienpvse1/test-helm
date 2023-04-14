FROM node:18.15.0
WORKDIR /usr/src/app
COPY ["./package.json", "./package-lock.json", "./"] 
RUN npm i
COPY ./ ./
RUN npm run build
CMD [ "node", "build/index.js" ]