# nginx-cors-proxy
Nginx proxy with configurable CORS support. 
Proxy supports pre-flight request.   


Image is based on stable version Nginx on Alpine linux. 


## Env variables:
* CONFIG1 - first line in config file (like resolver 169.254.169.250;)
* ORIGIN - http origin (like http://localhost:8080)
* ORIGIN2 - optional http origin (like ionic://localhost:8080)
* PROXY_UPSTREAM_HOST - proxy pass location (like http://app:80)
* MANUAL_CORS_PATH - add Access-Control-Allow-Origin "*" for this path (optional variable, like /)
