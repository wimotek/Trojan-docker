FROM nginx:latest
ENV DOMAIN_NAME jp1.cnas.ga
ENV TROJAN_PWD jp1.cnas.ga

#WORKDIR /root
#COPY . .
ls -a
COPY ./install.sh /root \
     &&chmod +x install.sh

ADD web.zip /usr/share/nginx/html
# COPY . /etc/nginx/nginx.conf

CMD [ "sh", "-c", "install.sh&&exec nginx -g 'daemon off;'"]
