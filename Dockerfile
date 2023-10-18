FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install apache2-utils
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
copy index.html /var/www/html/
