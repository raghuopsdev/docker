FROM centos:7
RUN yum install -y httpd
COPY proxy.conf /etc/httpd/conf.d/proxy.conf
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
