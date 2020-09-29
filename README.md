# NuCypher Scripts

## Init Env For CentOS
```shell
bash init.sh
```

## Set Alias
```shell
alias geth='docker-compose run --rm geth /usr/local/bin/geth'
alias clef='docker-compose run --rm clef'
alias nucypher='docker-compose run --rm nucypher nucypher'
alias ursula='docker-compose run --rm nucypher nucypher ursula'
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
docker-compose run -d nucypher ursula run
```
