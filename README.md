# Vintage Story Docker Image

This is a simple Docker Image for running "Vintage Story" dedicated server. 


## Howto build image

Very easy usage, you **can** define version via parameter. If not set, default (1.14.10) value will be used!

**default version**
```
./build.sh
```

**specific version**

```
./build.sh 1.14.9
```

## Parameters

This image is based on linuxserver.io (https://www.linuxserver.io/), so you can use the well documented advantages of LSIO-images:

| Parameter | Function |
| :----: | --- |
| `-p 42420` | The port for the Vintage Story server |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London |
| `-v /data` | Vintage Server data directory to store map and configs |


## Howto run (docker run)

Please ensure that the used tag (1.14.10) is built and available, if not modify parameter as wanted:

```
docker run --name vintagestory_server -e PUID=1000 -e PGID=1000 -v vintagestory_server:/data/ vintagestory:1.14.10
```

