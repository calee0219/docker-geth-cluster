# docker-geth-cluster
using docker compose to build ethereum node cluster with docker and geth

Inspire by [konradkonrad/docker-pyeth-cluster](https://github.com/konradkonrad/docker-pyeth-cluster)

## Require

- install docker, docker-compose
- build docker image if you need
```shell
git clone https://github.com/konradkonrad/docker-geth-cluster.git
cd docker-geth-cluster
docker build -t calee0219/docker-geth-cluster .
```

## How to used

### Start mining

```shell
cd simple
docker-compose up --scale bootstrap=1 --scale eth=2 --scale miner=3
```

Where 1, 2, and 3 is how many node you want to create

### go inside and test

```shell
# enter docker
docker exec -it [contaoiner name] /bin/bash
# attach to geth
geth attach
```

## What's the node

1. bootstrap: A bootstrap node for your network. You should always build it and build it only one node.

2. eth: A normal node that will not mining

3. miner: A mining node

## What you can change
- [genesis.json](./genesis.json)

    you can edit genesis up to you

    you must rebuild docker image if you rewrite genesis

- [geth parameter](simple/docker-compose.yml)

    change parameter here
