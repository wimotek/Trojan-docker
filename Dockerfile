FROM centos:latest
#ENV DOMAIN_NAME jp1.cnas.ga
#ENV TROJAN_PWD jp1.cnas.ga

WORKDIR /root

COPY install.sh /root

ADD web.zip /usr/share/nginx/html
# COPY . /etc/nginx/nginx.conf



RUN echo $PWD -------------- \
    && chmod +x install.sh \
    && ls -a /usr/share/nginx/html

CMD [ "sh", "-c", "install.sh&&exec nginx -g 'daemon off;'"]
