# Bento4 

![Build](https://github.com/<OWNER>/<REPOSITORY>/workflows/Build/badge.svg)

Bento4 is a media packager to produce DASH and HLS streaming formats.  This is to build a bento4 container by compiling it from Source.  

Project uses https://github.com/axiomatic-systems/Bento4.  Dockerfile is inspired by the source

## How to build container image

To build latest released version

```bash
chmod +x build.sh
./build.sh
```

You can manually build a specific version

```bash
docker build --build-arg BENTO4_VERSION=$BENTO4_VERSION  .
```

## How to use