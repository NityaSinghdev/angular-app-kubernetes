# stage 1
FROM ubuntu
RUN app-get update
RUN app=get install nginx -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
