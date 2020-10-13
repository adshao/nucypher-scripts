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

## Create worker account
```shell
clef newaccount
```

## Update rules.js
Update rules.js and load it:
```shell
clef attest $(sha256sum /root/clef/rules.js | awk '{print $1}')
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
export NUCYPHER_WORKER_ETH_PASSWORD=
export NUCYPHER_KEYRING_PASSWORD=
docker-compose run --name ursula -d nucypher nucypher ursula run --prometheus --metrics-port 9101
```

## Verify Ursula
```shell
docker exec -it ursula nucypher ursula run -I
```
