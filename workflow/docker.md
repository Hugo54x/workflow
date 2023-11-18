# Docker

## Run container with attached terminal

docker run --rm -it --entrypoint bash <image_hash>

## Remove all Docker images

docker rmi -f $(docker images -aq)

## Get IP Address of all Docker containers

docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)

## Curl IP Address of Docker container with container_name

curl https://`docker inspect <container_name> | grep -Eo '\"IPAddress\": \"([0-9]{1,3}\.){3}[0-9]{1,3}\"' | cut -d'"' -f4`

## Docker Network Performance Test

### Start Server

docker run  -it --rm --name=iperf3-server -p 5201:5201 networkstatic/iperf3 -s

### Get IP Address from server container

docker inspect --format "{{ .NetworkSettings.IPAddress }}" iperf3-server

### Start clinet pod and run test

docker run -it --rm networkstatic/iperf3 -c <ip_address>

## Resize VHDX under Windows

### Run in an elevated Powershell prompt

1. Stop Docker

```powershell
# Shutdown Windows Subsystem for Linux
wsl --shutdown

# Verfiy shutdown
wsl -l -v

$FilePath = "C:\Users\<user>\AppData\Local\Docker\wsl\data\ext4.vhdx"

Mount-VHD -Path $FilePath -ReadOnly
Optimize-VHD -Path $FilePath -Mode Full
Dismount-VHD -Path $FilePath
```

## Spin up local Postgres Test Database

```yaml
version: '3.9'

services:
  dg-postgres-db:
    image: postgres
    restart: unless-stopped
    environment:
      POSTGRES_PASSWORD: postgres
      POSTGRES_USER: postgres
      POSTGRES_DB: example
    volumes:
      - ./data:/data
    ports:
      - 5432:5432
```

### Install Docker PG Admin Extension

docker extension install mochoa/pgadmin4-docker-extension

### Connect through the Extension to Database

Attention: It could be necessary to use the IP of host.docker.internal instead

```text
Connection URL: host.docker.internal
Connection Port: 5432
Connection User: postgres
Connection Password: postgres
```
