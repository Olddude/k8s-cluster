FROM node as build
WORKDIR /app
COPY ./package*.json /app/
RUN npm install
COPY . .
RUN npm run build -- --configuration production

FROM nginx as final
COPY k8s-angular.nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist/k8s-angular/* /usr/share/nginx/html/
