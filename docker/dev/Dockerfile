FROM chenglongzq/flaskproject-base:latest

MAINTAINER 2XL <chenglong.zq@gmail.com>

# featured with:
# dev dependencies
# ability to build release instances


# Install dev/build dependencies
RUN apt-get update && \
    apt-get install -qy python-dev libmysqlclient-dev


# Activate virtual env and install wheel support
RUN . /venv/bin/activate && \
    pip install wheel --upgrade

# PIP environment variables (Must be set after installing wheel)
ENV WHEELHOUSE=/wheelhouse \
    PIP_WHEEL_DIR=/wheelhouse \
    PIP_FIND_LINKS=/wheelhouse \
    XDG_CACHE_HOME=/cache           # cache for pip libraries, during testing repetitions,


VOLUME /wheelhouse # OUTPUT: Build artifacts are output here
VOLUME /reports    # OUTPUT: Test reports are output here

# Add test entrypoint script
COPY ../scripts/test.sh /usr/local/bin/test.sh
RUN chmod +x /usr/local/bin/test.sh

# set defaults for entrypoint and command string
ENTRYPOINT["test.sh"]
CMD ["python", "manage.py", "test", "--noinput"] # to surpress user prompts

# ADD /{{cookiecutter.project_name}} /app # same, but more powerfull, allow url, tarballs
ADD /flaskproject /app
WORKDIR /app

# build
# cd /project/root/
# docker build -t <tagname>-dev -f docker/dev/Dockerfile .
