
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
    

