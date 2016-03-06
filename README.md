# Docker-HTTPD
=================

Dockerfile for httpd server. Required mount directory with folder /web (for webroot path).

Getting Started
---------------

You can build this container from Github via

	docker build -t httpd github.com/Darez/Docker-HTTPD

To run the container you can do the following:

	docker run -d -p <forwarded port>:80 --privileged -v `pwd`:/var/www/html -i -t httpd

Optional use link for db container or another service:

	docker run -d -p <forwarded port>:80 --privileged -v `pwd`:/var/www/html --link pgsql -i -t httpd
