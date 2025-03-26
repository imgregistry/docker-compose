<!-- markdownlint-disable MD041 -->
<!-- markdownlint-disable MD012 -->

# docker-compose library

A collection of useful docker-compose stacks for DevOps practices.  This is a personal collection and is by no means production-ready.

Consider all these stacks as-is.  This project is maintained actively but is not used for any specific purpose.

## Binary Distribution

[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/lukechannings/deno/latest?label=Docker%20Image)](https://hub.docker.com/r/lynsei/bin/tags)

### Supported Platforms


> [!IMPORTANT]
>
> v0.1.1:
> Current Release Notes:

## Initial Draft

* GraphQL Hasura
* Auto Proxy

## Platforms

* docker-compose 2.0

## Index

| Command | Purpose |
| -- | -- |
| timescale-hasura |  Timescaledb and Hasura with Postgres |
| pgadmin-postgres-proxy-hasura | Auto SSL Proxy with Hasura, PGAdmin and Postgres|
| ansible-vault | Ansible Vault stack |

# Logical Diagram

<!-- github feature -->
<!-- markdownlint-disable MD046 -->
```mermaid
---
title: Docker Compose Library
---
  graph TD;
      src-->hasura;
      hasura-->timescaledb;
      hasura-->hasura_frontend;
      hasura-->postgres;
      src-->autoproxy;
      autoproxy-->jwilder_nginx;
      autoproxy-->certbot;
      autoproxy-->containers;
      release_build_compose-->test_docker_compose;
```
