




```sh
ls docker-compose.yml
docker-compose up -d
docker-compose -f docker-compose.yml up -d

```


---
- docker-compose.yml

```yml

version:"version_id"
services:
  service1:
    build:
      - context:
      - dockerfile:
  service0:
    image:
    environment:
      - KEY=value
    entrypoint:/bin/sh xxx.sh
    networks:
      - network_name
    ulimits:
        memlock:
          soft: -1
          hard: -1
      deploy:
        resources:
          limits:
            memory: 1g
    depends_on:
      - service1
    volumes:
      - local_path:container_path
    ports:
      - local_port:container_port/protocol
      - 8080:8080
      - 3306:3306/tcp


networks:
    network_name:
      driver: bridge

```


---

- build
- image
- container_name
- volumes
- command
- links
- external_links
- expose
- ports


---
- restart
    - restart: "no"
    - restart: always
    - restart: on-failure
    - restart: unless-stopped

---
- environment

- pid

- dns


```
docker-compose --help

```