# rtorrent-flood

![Screenshot](https://s3.amazonaws.com/johnfurrow.com/share/flood-screenshots-a.png)

# Supported tags and respective

* latest [Dockerfile](https://github.com/tle06/rtorrent-flood/blob/master/Dockerfile)

This image is updated via pull requests to the tle06/rtorrent-flood GitHub repo.

# Sources
[github/flood](https://github.com/jfurrow/flood)

[rtorrent/libtorrent](https://jes.sc/kb/rTorrent-ruTorrent-Seedbox-Guide.php#rTorrent+LibTorrent+XML-RPC)

# What is flood
Flood is another web interface for rtorrent. It implements a Node.js server for communicating with the rTorrent API, storing historical data, and serving the web UI.

It's a work-in-progress, and it might not have all of the features you want (yet). However, new features are added frequently. Feel free to file an issue and I'll try to prioritize your feature requests.

# Image configuration
## Package installed
* git
* build-essential
* subversion
* autoconf
* screen
* g++
* gcc
* ntp
* curl
* comerr-dev
* pkg-config
* cfv
* libtool
* libssl-dev
* libncurses5-dev
* ncurses-term
* libsigc++-2.0-dev
* libcppunit-dev
* libcurl3
* libcurl4-openssl-dev
* nodejs
* npm

## Port exposed
* port 3000
* port 5000
* port 55950-56000
* port 6881

## Work dir
* workdir = /var/www/flood

# Available ENV variable

* __FLOOD_BASEURI__ =/
* __FLOOD_DBCLEANINTERVAL__ =1000*60*60
* __FLOOD_DBPATH__ =./server/db/
* __FLOOD_FLOODSERVERHOST__ =127.0.0.1
* __FLOOD_FLOODSERVERPORT__ =3000
* __FLOOD_MAXHISTORYSTATES__ =30
* __FLOOD_POLLINTERVAL__ =1000*5
* __FLOOD_SECRET=__ flood
* __FLOOD_SCGIHOST__ =localhost
* __FLOOD_SCGIPORT__ =5000
* __FLOOD_SCGISOCKET__ =false
* __FLOOD_SCGISOCKETPATCH__ =/tmp/rtorrent.sock
* __FLOOD_SSL__ =false
* __FLOOD_SSLKEY__ =/absolute/path/to/key/
* __FLOOD_SSLCERT__ =/absolute/path/to/certificate/
* __FLOOD_TORRENTCLIENTPOLLINTERVAL__ =1000*2

# How to use this image
## Start rtorrent-flood

Starting the modern-paste instance listening on port 80 is as easy as the following:
``` Docker

$ docker run -d --restart=always -p 80:3000 tlnk/rtorrent-flood

```
Then go to http://localhost/ and go through the wizard.

## Persistent data

* -v /`<mydatalocation>`:/downloads (Save all download from rtorrent)
* -v /`<mydatalocation>`:/root/ (save configuration file from rtorrent)

## Via docker-compose

```
Docker
version: '2'

services:

modern-paste:
 image: tlnk/rtorrent-flood
 ports:
   - 80:3000

```
