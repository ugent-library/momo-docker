# Momo Docker

Orchestrate Momo infrastructure with Docker.

## Requirements

[Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/).

## What is this?

Momo builds on top of a stack of services such as PostgreSQL, Elasticsearch and others.
Docker orchestrates management of this stack in you development environment.

The infrastructure is formally described in code in a `docker-compose.yml` file.

## How to use

Installation and initialization.

```
$ git clone https://github.com/ugent-library/momo-docker
$ docker build up -d
```

You will get 2 running containers:

* momo-elastic: Elasticsearch running on `localhost:9200` and `localhost:9300`
* momo-postgres: PostgreSQL running on `localhost:5432`

momo-postgres will automatically have a privileged user and database created and initialized:

* user: momo-dev
* pass: momo-dev
* db: momo-dev

Refer to the [Wiki](https://github.com/ugent-library/momo-docker/wiki) for more documentation.