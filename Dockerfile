FROM ubuntu:latest

RUN apt update && \
    apt install -y apache2 zip unzip && \
    apt clean

WORKDIR /var/www/html

ADD https://freewebsitetemplates.com/download/space-science.zip /tmp/space-science.zip

RUN unzip /tmp/space-science.zip -d /tmp && \
    cp -r /tmp/space-science/* /var/www/html/ && \
    rm -rf /tmp/space-science /tmp/space-science.zip

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
 
 
# FROM  ubuntu:latest
# RUN apt update && \
   # apt install -y apache2 zip unzip && \
   # apt clean
# ADD https://freewebsitetemplates.com/download/space-science.zip /tmp/space-science.zip /var/www/html/
# WORKDIR /var/www/html/
 #unzip /tmp/space-science.zip -d /tmp && \
    # cp -r /tmp/space-science/* /var/www/html/ && \
    # rm -rf /tmp/space-science /tmp/space-science.zip  
