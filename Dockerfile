FROM nginx:latest
ENV DOMAIN_NAME jp1.cnas.ga

WORKDIR /root

ADD web.zip /usr/share/nginx/html
# COPY . /etc/nginx/nginx.conf
# COPY . .
