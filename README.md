# NuCypher Scripts

## Init Env For CentOS
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/adshao/nucypher-scripts/master/init.sh)"
```

## Activate Alias
```shell
source ~/.bashrc
```

## Init Clef
```shell
clef init
```

## Start Clef
```shell
clef
```

## Start Geth
```shell
docker-compose up -d geth
```

## Init Worker
```shell
ursula init
```

## Run Worker as Daemon
```shell
docker-compose run -d nucypher nucypher ursula run
```
