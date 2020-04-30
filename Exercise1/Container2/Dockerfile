FROM ubuntu
MAINTAINER sebics@gmail.com
RUN apt update
RUN apt -y install curl
WORKDIR workdir
COPY script.sh .
RUN chmod +x script.sh 
#CMD /workdir/script.sh
CMD while true; do echo `date`  "  " `curl -s 192.168.1.88:8080`; sleep 10; done;

