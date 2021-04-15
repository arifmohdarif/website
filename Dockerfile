FROM debian
RUN apt-get update
RUN apt-get install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name website
version: '3.7'
services:
  timezone:
    build: .
    environment:
      - TZ=America/New_York
      - DEBIAN_FRONTEND=noninteractive
