#!/usr/bin/env bash

#Run all the tests in the solos app
python manage.py test solos
# Run all the tests in solos/tests/test_views.py
python manage.py test solos.tests.test_views
# Run all the tests in SoloViewTestCase
python manage.py test solos.tests.test_views.SoloViewTestCase
# Run only test_basic in SoloViewTestCase
python manage.py test solos.tests.test_views.SoloViewTestCase.\test_basic

