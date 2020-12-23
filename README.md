# Bento4 

![Build](https://github.com/gopiio/bento4-docker/workflows/Build/badge.svg)

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

You can follow the Bento4 document here: https://www.bento4.com/documentation/

An example command below

```bash
docker run -it --rm gopiio/bento4:latest mp4fragment
MP4 Fragmenter - Version 1.6.1
(Bento4 Version 1.6.0.0)
(c) 2002-2019 Axiomatic Systems, LLC

usage: mp4fragment [options] <input> <output>
options are:
  --verbosity <n> sets the verbosity (details) level to <n> (between 0 and 3)
  --debug enable debugging information output
  --quiet don't print out notice messages
  --fragment-duration <milliseconds> (default = automatic)
  --timescale <n> (use 10000000 for Smooth Streaming compatibility)
  --track <track-id or type> only include media from one track (pass a track ID, 'audio', 'video' or 'subtitles')
  --index (re)create the segment index
  --trim trim excess media in longer tracks
  --no-tfdt don't add 'tfdt' boxes in the fragments (may be needed for legacy Smooth Streaming clients)
  --tfdt-start <start> value of the first tfdt timestamp, expressed as a floating point number in seconds
  --sequence-number-start <start> value of the first segment sequence number (default: 1)
  --force-i-frame-sync <auto|all> treat all I-frames as sync samples (for open-gop sequences)
    'auto' only forces the flag if an open-gop source is detected, 'all' forces the flag in all cases
  --copy-udta copy the moov/udta atom from input to output
  --no-zero-elst don't set the last edit list entry to 0 duration
```