
## Golden Rule of Docker
    * [Self-contained] One Single Service per Container [microservices] 
    * [Reusable] for other apps [connect via bindings]
    * [Independent] Platform agnostic, not restricted to platforms [deploy independently]




## Usage:




* How to run specific test settings?
    * override container env vars
    
```shell
docker run --rm  \
    -e APPNAME_ENV='dev' \ 
    --volumes-from cache <image>-dev

# 
# dev_env = os.getenv('APPNAME_ENV') or 'dev'
# app = create_app(dev_env)
#

```



<pre>
<code>

todo: update this tree

../docker/
├── base
│   ├── Dockerfile
│   ├── dev
│   │   └── Dockerfile
│   ├── prod
│   │   └── Dockerfile
│   └── test                        
│       └── Dockerfile
├── Dockerfile
└── README.md
</code>
</pre>

###Concepts

 * proces flow
     * **with exec**
     
         *
         * [entrypoint] script it will own the PID 1 (first execution)
         * when the script process exits () 
         * it will send a stop signal to docker daemon
         * then gracefully terminates
         *
     * **without exec**
     
         *
         * [cmd] a child process != PID 1
         * when the process exits ()
         * it the daemon will continue alive
         * then require docker to force terminate all process to terminate
         *
 * volumes
    * persistent data containers for caching or sharing data among instances
    


## Docker compose:


**Troubleshoot**
```
race condition during initialization

case 1: app service && db service
    | app service try query db service
    | db not ready yet
    | query fails

solution 1: agent service [ansible]
    | probe periodically if services are running
    
solution 2: watchdog python script at the web app entrypoint
    |

solction 3: tell django to restart service if fails but we are in test env...
    |

```

## Ansible

* software platform for configuring and managing computers which combines multinode software deployment adhoc task  execution, and configuration management.

* [playbook](http://docs.ansible.com/ansible/playbooks_intro.html)
    * yml files composed with plays, each play maps ...
    * play map a group of hosts to some well defined roles, represented by tasks
    * ...

* profile of nodes:
    * controlling machines [the manager of all the nodes the root]
    * nodes .. the services ...
    
