# hombre-postgres
![Docker Pulls](https://img.shields.io/docker/pulls/hombrelab/hombre-postgres) ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/hombrelab/hombre-postgres) ![GitHub commit activity](https://img.shields.io/github/last-commit/hombrelab/hombre-postgres)  

The [hombre-postgres](https://hub.docker.com/repository/docker/hombrelab/hombre-postgres) image is based on the [official postgres v12 alpine v3.11 image](https://hub.docker.com/_/postgres).  
It is a customized Docker image for and by [@Hombrelab](me@hombrelab.com).

Includes:
- linux packages: bash, ca-certificates. 

Deployment examples:

Command line
```shell script
docker run \
    --name postgres-db \
    --detach \
    --restart unless-stopped \
    --volume /home/data/postgres-db/data:/var/lib/postgresql/data \
    --volume /etc/localtime:/etc/localtime:ro \
    --env POSTGRES_USER=user \
    --env POSTGRES_PASSWORD=user \
    --expose: 5432 \
    hombrelab/hombre-postgres
```
Docker Compose
```yaml
    postgres-db:
        container_name: postgres-db
        restart: unless-stopped
        image: hombrelab/hombre-postgres
        volumes:
            - /home/data/postgres-db/data:/var/lib/postgresql/data
            - /etc/localtime:/etc/localtime:ro
        environment:
            - POSTGRES_USER=user
            - POSTGRES_PASSWORD=user
        expose:
            - 5432
```