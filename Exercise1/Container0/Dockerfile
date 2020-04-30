FROM ubuntu:latest
#RUN apt update && \
#    apt -y install apache2 && \
### for optimisation of image size and caching issues run on one command


# for time spend on building the image
RUN apt update
RUN apt -y install apache2

# before mounting the index file
#RUN echo "welcome to my website" > /var/www/html/index.html

# experiment with entrypoint, either shell or exec form and it did not stay running
# as the default service start script exits and there is nothing to keep it from returning
#ENTRYPOINT exec service apache2 start



EXPOSE 80
CMD service apache2 start && sleep 5 && tail -F /var/log/apache2/access.log 
