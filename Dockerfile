FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/
COPY ssl/ /etc/nginx/ssl/
COPY html/ /usr/share/nginx/html/
