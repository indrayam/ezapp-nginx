FROM nginx
COPY html /usr/share/nginx/html
COPY conf/default.conf /etc/nginx/conf.d/
RUN ["mkdir", "-p", "/usr/share/nginx/letsencrypt/.well-known/acme-challenge"]
CMD ["nginx", "-g", "daemon off;"]
