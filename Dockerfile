FROM phusion/baseimage:0.9.15

 MAINTAINER Andre Gloria <andre@ayk.com.br>

 ENV LAST_UPDATE 2014-12-08

 #Disable ssh
 RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

 RUN apt-get update && \
     apt-get upgrade -y && \
     apt-get install -y wget python python-dev libyaml-dev gcc

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN rm get-pip.py
RUN pip install mkdocs

RUN apt-get remove -y wget python-dev libyaml-dev gcc && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/workspace"]
WORKDIR /workspace
EXPOSE 8000

COPY init /app/init
RUN chmod 755 /app/init

ENTRYPOINT ["/app/init"]
CMD ["server"]
