FROM ubuntu:latest
RUN apt install -y httpd \
zip\
unzip
ADD https://downloads.wordpress.org/theme/expert-construction-company.0.1.zip /var/www/html/
WORKDIR /var/wwww/html/
RUN unzip expert-construction-company.0.1.zip
RUN cp -rvf expert-construction-company/*
RUN rm -rf expert-construction-company.0.1.zip
CMD [ "/usr/sbin/httpd/", "-D", "FOREGROUND" ]
EXPOSE 80 22