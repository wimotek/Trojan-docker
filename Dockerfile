FROM centos:latest
#ENV DOMAIN_NAME jp1.cnas.ga
#ENV TROJAN_PWD jp1.cnas.ga

#WORKDIR /root
COPY . .

RUN echo $PWD -------------- \
    && ls -a \
    && cd /drone/src && echo -------------------------- \
    && echo $PWD

COPY *.sh  /root \
     &&chmod +x install.sh

ADD web.zip /usr/share/nginx/html
# COPY . /etc/nginx/nginx.conf

CMD [ "sh", "-c", "install.sh&&exec nginx -g 'daemon off;'"]
