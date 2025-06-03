FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

# Create initial index.html
RUN echo '<html><body><h1>Welcome to Apache on Ubuntu Docker!</h1></body></html>' > /var/www/html/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
