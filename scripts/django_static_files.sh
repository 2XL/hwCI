#!/usr/bin/python


#Let's do as little configuration as possible to clean up this test. First, we add a STATIC_ROOT setting to jmad/settings.py:

```
STATIC_ROOT = os.path.join(BASE_DIR, 'static')

python manage.py collectstatic
```
#
#You have requested to collect static files at the destination
#location as specified in your settings:
#
#    /Users/kevin/dev/jmad-project/jmad/static

#This will overwrite existing files!
#Are you sure you want to do this?
#
#Type 'yes' to continue, or 'no' to cancel: yes
#Copying '/Users/kevin/.virtualenvs/jmad/lib/python3.4/site-packages/django/contrib/admin/static/admin/css/base.css'
#...
#62 static files copied to '/Users/kevin/dev/jmad-project/jmad/static'.