import os


INSTALLED_APPS = ('whatever apps',)

INSTALLED_APPS += ('TEST_APPS',)
TEST_RUNNER = 'django_nose.NoseTestSuitRunner'
TEST_OUTPUT_DIR = os.environ.get(key="TEST_OUTPUT_DIR", default='.')

# django-nose   # test suite                    "unit test"
# pinocchio     # pretty print tests output
# coverage      # coverage report               "coverage test"

# to run
# python manage.py test --settings=this.file.without.extension


DATABASES = {
    'default':
        {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': os.environ.get('DB_NAME', 'or default value'),
            'USER': '',
            'PASSWORD': '',
            'HOST': '',
            'PORT': '',
        }
}
