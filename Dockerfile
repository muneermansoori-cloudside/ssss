#FROM - Image to start building on.
FROM ubuntu:14.04
#RUN sudo apt-get  update
#RUN sudo apt-get install apache2
RUN apt-get update && apt-get install -y apache2
EXPOSE 80
RUN apt-get install git

#MAINTAINER - Identifies the maintainer of the dockerfile.
#MAINTAINER ian.miell@gmail.com

#RUN - Runs a command in the container
RUN echo "Hello muneer" > /var/www/html/index.html

#CMD - Identifies the command that should be used by default when running the image as a container.
#CMD ["cat", "/tmp/hello_world.txt"]
#CMD ["sleep", "30"]
#CMD ["echo", "it's updated"]
CMD ["apache2ctl", "-D", "FOREGROUND"]
#CMD ["date"]
