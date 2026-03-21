# Compose Networking

As an exercise, experiment with both configurations of `docker-compose-basic.yaml` and `docker-compose-multi.yaml`.

Use the `ping` command to check if the containers are able to communicate with each other.

Which containers are able to communicate with which other containers and why / why not?

## Basic Networking

Start all containers

```bash
docker compose -f docker-compose-basic.yaml up -d
```

Get all container ip addresses

```bash
docker ps --format "{{.Names}}" | xargs -I {} sh -c '
  echo "Container: {}";
  docker inspect {} --format "{{range \$net,\$conf := .NetworkSettings.Networks}}{{printf \"  %s: %s\" \$net \$conf.IPAddress}}\"{{end}}";
  echo ""
'
```

Get a shell into a running container and run ping commands

```bash
docker exec -it machine_alice /bin/sh

# ping machine_bob
# ping 172.20.x.x  # Replace with other machine IP address
```

Shutdown all containers

```bash
docker compose -f docker-compose-basic.yaml down
```

## Multi Networking

Start all containers

```bash
docker compose -f docker-compose-multi.yaml up -d
```

Shutdown all containers

```bash
docker compose -f docker-compose-multi.yaml down
```


## Reference Commands

```bash
# Check Docker's networks
docker network ls
```

Check container's IP address

**Method 1**: Exec into the container and run `ifconfig`

```bash
docker exec -it machine_alice /bin/sh
```

Inside the container
```bash
ifconfig
# eth0      Link encap:Ethernet  HWaddr 4A:1A:64:23:CA:67  
#   inet addr:172.20.0.2  Bcast:172.20.255.255  Mask:255.255.0.0
```

**Method 2**: Use `docker inspect`

```bash
# Prints out full specification
docker inspect machine_alice
# Look for NetworkSettings > Networks > compose_networking_default > IPAddress
docker inspect machine_alice --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'
```