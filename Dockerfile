FROM python:3.4

MAINTAINER Andre Gloria <andre@ayk.com.br>

ENV LAST_UPDATE 2015-11-03

RUN pip install mkdocs

VOLUME ["/workspace"]
WORKDIR /workspace
EXPOSE 8000

COPY init /app/init
RUN chmod 755 /app/init

ENTRYPOINT ["/app/init"]
CMD ["serve"]
