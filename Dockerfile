FROM centos:7
MAINTAINER a@a

RUN yum install python-pip -y && yum clean all

RUN pip install mkdocs

RUN useradd --shell /bin/bash -d /home/andrew -u 1000 -o -c "" -m andrew \
 && usermod -aG root user

EXPOSE 80

WORKDIR /home/user

CMD ["mkdocs", "serve", "-a", "0.0.0.0:80"]
