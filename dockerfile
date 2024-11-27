FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*
ADD ./build /usr/share/nginx/html/
