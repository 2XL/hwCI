#!/bin/sh -x

# -e errexit

. /venv/bin/activate # activate virtual env

exec $@ # execute all the arguments passed to the call

# docker run <imagename> python manage.py
# python manage.py >> $@