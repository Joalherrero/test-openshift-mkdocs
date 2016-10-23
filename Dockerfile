FROM python-27-rhel7

MAINTAINER example a@a

RUN pip install mkdocs
RUN pip install mkdocs-material

RUN mkdir /docs
WORKDIR /docs

EXPOSE 8080

CMD ["mkdocs serve"]
