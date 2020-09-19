FROM node:13.12.0-alpine as build
WORKDIR /app
COPY /src /app
COPY package.json /app
RUN npm install --silent

FROM nginx:latest
COPY --from=build /app /usr/share/nginx/html
COPY .nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
