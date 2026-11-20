FROM nginx:1.27-alpine
COPY default.conf /etc/nginx/conf.d/default.conf
copy index.html 404.html /usr/share/nginx/html/
expose 80
