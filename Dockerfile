
FROM python:2.7

MAINTAINER example a@a

RUN pip install mkdocs
RUN pip install mkdocs-material

RUN mkdir /docs
WORKDIR /docs
VOLUME /docs

EXPOSE 8000

CMD mkdocs serve
