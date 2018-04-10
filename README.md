# Example of `docker-compose`

This is a simple example of how to use `docker-compose` to stand up `cassandra`, `postgres`, and `rabbitmq` as available local services

# How-to and such

```
$ docker-compose up
```
then to be sure everything is kosher, open a new tab/terminal and...
```
$ docker ps
```

it should look like this:
```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS
                                                                                                       NAMES
f847d9b222b3        postgres:latest     "docker-entrypoint.s…"   35 minutes ago      Up 35 minutes       5432/tcp, 0.0.0.0:5432->32778/tcp
                                                                                                       compose_postgres_1
5cab4e062944        rabbitmq:latest     "docker-entrypoint.s…"   35 minutes ago      Up 35 minutes       4369/tcp, 5671/tcp, 25672/tcp, 0.0.0.0:5672->5672/tcp, 0.
0.0.0:25672->32779/tcp, 0.0.0.0:5671->32781/tcp, 0.0.0.0:4369->32782/tcp                               compose_rabbitmq_1
c3646c87f54a        cassandra:latest    "docker-entrypoint.s…"   35 minutes ago      Up 35 minutes       7000-7001/tcp, 7199/tcp, 9160/tcp, 0.0.0.0:9042->9042/tcp
, 0.0.0.0:9160->32773/tcp, 0.0.0.0:7199->32775/tcp, 0.0.0.0:7001->32776/tcp, 0.0.0.0:7000->32777/tcp   compose_cassandra_1
```

you can also run `docker-compose ps` and it'll be a little easier to read, but provide less insight overall

```
$ docker-compose ps
       Name                      Command               State                                                  Ports
------------------------------------------------------------------------------------------------------------------------------------------------------------------
compose_cassandra_1   docker-entrypoint.sh cassa ...   Up      0.0.0.0:9160->32773/tcp, 0.0.0.0:7199->32775/tcp, 0.0.0.0:7001->32776/tcp, 0.0.0.0:7000->32777/tcp,
                                                               7000/tcp, 7001/tcp, 7199/tcp, 0.0.0.0:9042->9042/tcp, 9160/tcp
compose_postgres_1    docker-entrypoint.sh postgres    Up      0.0.0.0:5432->32778/tcp, 5432/tcp
compose_rabbitmq_1    docker-entrypoint.sh rabbi ...   Up      25672/tcp, 0.0.0.0:25672->32779/tcp, 0.0.0.0:5671->32781/tcp, 0.0.0.0:4369->32782/tcp, 4369/tcp,
                                                               5671/tcp, 0.0.0.0:5672->5672/tcp
```

## Todo

* ~~add cassandra entrypoint and other scripts for configuration of services, etc~~
