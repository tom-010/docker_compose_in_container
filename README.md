docker_compose_in_container
===========================

The idea is to pack a docker-compose project into a container. This gives it a 
version and makes it testable and deployable. It is also benificial for multi-
project servers, where multiple projects are deployed on the same server behind
a shared reverse proxy, which itself is defined via docker-compose.

The outer `docker-compose.yml` serves as the front proxy which connects the 
docker-containers that contains the `docker-compose.yml`s of the projects.