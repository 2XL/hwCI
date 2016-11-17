FROM ubuntu

LABEL application=flaskproject

MAINTAINER 2XL "chenglong.zq@gmail.com"

# Prevent dpkg erros
ENV TERM=xterm-256color

# Set mirrors to uk, checks the source if match then update and store a backup of previous list
RUN sed -i "s/http:\/\/archive./http:\/\/uk.archive./g" /etc/apt/sources.list



# setup the system basics libs and dependencies
RUN apt-get update -y && \
         apt-get install -y \
         -o APT::Install-Recommend=false \
         -o APT::Install-Suggest=false \
         python-pip python-dev build-essential python-virtualenv cookiecutter git

# upgrade pip python package manager
RUN pip install --upgrade pip

# enable virtualenv and install python dependencies
RUN virtualenv /venv && \
    . /venv/bin/activate

# pip install -r --upgrade /app/requirements.txt


# add entrypoint scripts
ADD scripts/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh


ENTRYPOINT ["entrypoint.sh"]

# build
# cd /project/root/
# docker build -t <reponame>/<tagname>-base -f docker/Dockerfile .
