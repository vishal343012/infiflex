FROM centos: latest
MAINTAINER itvishal30@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf neogym.html/* •
RUN rm -rf -MACOSX neogym.html neogym.zip
CMD ["/usr/sbin/httpd™, -D, FOREGROUND ]
EXPOSE 80
