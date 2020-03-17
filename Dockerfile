FROM oraclelinux
MAINTAINER apekshith.vasan@oracle.com
RUN yum install httpd -y
WORKDIR /var/www/html
COPY . .
EXPOSE 80
#CMD httpd -dFOREGROUND
ENTRYPOINT httpd -dFOREGROUND
