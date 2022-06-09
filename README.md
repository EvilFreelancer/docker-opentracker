# OpenTracker in Docker

Simple dockerized BitTorrent [OpenTracker](https://erdgeist.org/arts/software/opentracker/) application.

## How to build and run

```shell
git clone https://github.com/EvilFreelancer/docker-opentracker.git
cd docker-opentracker
cp docker-compose.dist.yml docker-compose.yml 
docker-compose build
docker-compose up -d
```

Your tracker will be available on http://localhost:6969

Announce address: http://localhost:6969/announce

Stats can be found here: http://localhost:6969/stats

## Configuration

Sample of configuration can be found [here](./opentracker.conf.sample).

For enabling it needs to modify your docker-compose.yml:
```yml
version: "2.4"
services:
  opentracker:
    command: ["-f", "/app/opentracker/opentracker.conf"]
    build:
      context: .
    ports:
      - "6969:6969"
      - "6969:6969/udp"
    volumes:
      - ./opentracker.conf:/app/opentracker/opentracker.conf
```
