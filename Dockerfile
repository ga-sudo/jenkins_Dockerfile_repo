FROM ubuntu
MAINTAINER garima

RUN apt-get update -y
RUN apt-get install nginx -y
CMD ["echo","Image Created"]
CMD ["nginx","-g", "daemon off;"]
