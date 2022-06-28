FROM tomcat:latest
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND -D FOREGROUND
ENV name website
