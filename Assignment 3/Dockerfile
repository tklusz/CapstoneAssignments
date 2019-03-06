FROM ubuntu:18.04

EXPOSE 80:80
COPY playbooks /playbooks
ENV TZ=America/Los_Angeles

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y nano
RUN apt-get -y install software-properties-common python sudo > /dev/null
RUN apt-add-repository --yes --update ppa:ansible/ansible \
	&& apt-get install -qq -y ansible > /dev/null \
	&& cd playbooks \
	&& ansible-playbook playbook1.yml \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
	&& ansible-playbook playbook2.yml

CMD ["apachectl", "-D", "FOREGROUND"]
