FROM hshar/webapp
RUN yum update
RUN yum install httpd -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND -D FOREGROUND
ENV name website
