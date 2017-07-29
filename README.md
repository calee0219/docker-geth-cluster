# docker-geth-cluster
using docker compose to build ethereum node cluster with docker and geth

imspire by [konradkonrad/docker-pyeth-cluster](https://github.com/konradkonrad/docker-pyeth-cluster)

## How to used
Start mining
```shell
docker-compose up --scale bootstrap=1 --scale eth=2 --scale miner=3
```

## What you can change
- [genesis.json](./genesis.json)

    you can edit genesis up to you

- [geth parameter](simple/docker-compose.yml)

    change parameter here
