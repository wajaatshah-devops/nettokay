FROM node:latest as build-step
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginx:1.17.1-alpine
COPY --from=build-step /app/dist/nettokay /usr/share/nginx/html