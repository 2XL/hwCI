#!/bin/sh -x

# activate virtual env
. /venv/bin/activate

# install application test requirements
pip install -r requirements/test.txt

# run test arguments
exec $@