FROM nginx:alpine

ARG WEBROOT="/var/www/html"

ENV WEBROOT=${WEBROOT}

COPY nginx.conf /etc/nginx/templates/default.conf.template
COPY index.html ${WEBROOT}/index.html