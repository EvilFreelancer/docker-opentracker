# OpenTracker in Docker

Simple dockerized BitTorrent [OpenTracker](https://erdgeist.org/arts/software/opentracker/) application.

## How to build and run

```shell
git clone https://github.com/EvilFreelancer/docker-opentracker.git
cd docker-opentracker
docker-compose build
docker-compose up -d
```

Your tracker will be available on http://localhost:6969

Stats can be found here: http://localhost:6969/stats
