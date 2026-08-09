FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
RUN echo "Hello World from Nginx" > /usr/share/nginx/html/index.html