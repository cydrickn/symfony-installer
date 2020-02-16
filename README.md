# Symfony
Docker for Symfony

## Use to install symfony

```bash
$ docker run --rm -v $PWD:/app cydrick/symfony:7.3-alpine new <project_name> --full
```

## Use to run as server

```bash
$ docker run -v $PWD:/app -p 80:8000 cydrick/symfony:7.3-alpine server:start
```

Open your browser and open link http://localhost

## Use as base of your own Dockerfile

```Dockerfile
FROM cydrick/symfony:7.3-alpine
...
```

## Use in docker-compose.yml
```yaml
version: "3.4"
services:
  symfony:
    image: cydrick/symfony:7.3-alpine
    volumes:
      - <your-symfony-folder>:/app
    command: server:start
    ports:
      - 80:8000
```
