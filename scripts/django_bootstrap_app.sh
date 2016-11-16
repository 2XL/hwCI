#!/bin/bash
exit 0
django-admin startproject projectname
python manage.py startapp appname  			#Create django app inner django project
python manage.py makemigrations appname
python manage.py migrate