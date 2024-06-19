FROM amazonlinux:latest
MAINTAINER vivektech.kumar@gmail.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip neogym.zip
RUN cp -R neogym-html/* .
RUN rm -rf oxer.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
