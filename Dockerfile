FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY assets /usr/share/nginx/html/assets

EXPOSE 10000

CMD ["/bin/sh", "-c", "sed -i \"s/listen       80;/listen       ${PORT:-10000};/\" /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
