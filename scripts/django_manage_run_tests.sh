#!/bin/bash -ex

python manage.py tests

python manage.py test --settings=appname.settings.test # where test is a
# file containing env vars of database settings,...
