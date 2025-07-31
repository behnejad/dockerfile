# Keycloak Cluster Configuration (How to)

This is a short and simple example on how to build a proper Keycloak cluster, using `DNS_PING` as discovery protocol and an NGINX server as reverse proxy.

To get it working properly, just enable Docker Swarm mode with `docker swarm init` and just run it as it were a regular Docker Compose deployment.
So, just `docker compose up` is enough, don't deploy a swarm `stack`! (This would cause trouble and extra complexity with networking)  
Afterwards, you can disable Swarm again with `docker swarm leave -f`, if needed.

---

Please see also my video about Keycloak Clustering: http://www.youtube.com/watch?v=P96VQkBBNxU  
NOTE: The video covers `JDBC_PING` protocol and uses the **legacy** Keycloak Wildfly distribution!

[![](http://img.youtube.com/vi/P96VQkBBNxU/maxresdefault.jpg)](http://www.youtube.com/watch?v=P96VQkBBNxU "")
