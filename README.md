
Continuous Integration Series
=============================

<pre>

├── README.md
├── scripts
│   ├── install.sh
│   ├── remove_all_containers.sh
│   └── remove_all_images.sh
└── todobackend
    ├── manage.py
    └── todobackend
        ├── __init__.py
        ├── settings.py
        ├── urls.py
        └── wsgi.py

</pre>



# download and build the app sample

git clone https://github.com/obytes/cookiecutter-flaskproject.git

Testing
=======


**Acceptance test**

Use mocha to test ap, using fake user-agents...

```
   $ cd test_acceptance
   $ npm install
   $ mocha
```


**Docker Image  Hierarchy**

* Base image (0) - core ...
    * minimum
    * app dependencies
    * sys configuration
    * default settings
    * howto:
        * initial setup
        * choose parent image
        * describe os packages
        * establish virtualization provider
        * build.

* Release image (1) - sandbox for realeasable apps
    * install apps
    * app configuration
    * app entrypoint

* Develop image (1) - sandbox for testing and building releasable apps
    * install dev dependencies
    * install test/build tools
    
    

**Continuous Delivery Workflow**

* roles:
    operations
        dockerfile
    developers
        application source code



* application artifacts:
    specs of dev methods or processes
    | case: source code compiled for testing
    | result: artifact (executable to test)
    | composed by: test suite & executable
    management context 
    | deliverable

* how to build artifacts:
    docker containers

    
    
**Readings**

[Use docker and test, push your artifacts](https://lostechies.com/gabrielschenker/2016/09/26/use-docker-to-build-test-and-push-your-artifacts/)