#!/usr/bin/env bash



sphinx-quickstart
vi index.rst # custom ... fields
make html

# generates

chromium-browser file:///`pwd`/_build/html/index.html