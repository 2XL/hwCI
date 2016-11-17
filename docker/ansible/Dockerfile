FROM ubuntu

MAINTAINER 2XL "chenglong.zq@gmail.com"

# Prevent dpkg erros
ENV TERM=xterm-256color

# Set mirrors to uk, checks the source if match then update and store a backup of previous list
RUN sed -i "s/http:\/\/archive./http:\/\/uk.archive./g" /etc/apt/sources.list

# Install Ansible
RUN apt-get update -qy && \
    apt-get install -qy software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update -qy && \
    apt-get install -qy ansible

# Copy
COPY playbooks /ansible
# Add volume for Ansible playbooks
VOLUME /ansible


WORKDIR /ansible


# Entrypoint
ENTRYPOINT ["ansible-playbook"]
CMD ["site.yml"]