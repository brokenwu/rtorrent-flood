#!/usr/bin/bash
#Default value
FLOOD_BASEURI="${FLOOD_BASEURI:=/}"
FLOOD_DBCLEANINTERVAL="${FLOOD_DBCLEANINTERVAL:=1000*60*60}"
FLOOD_DBPATH="${FLOOD_DBPATH:=./server/db/}"
FLOOD_FLOODSERVERHOST="${FLOOD_FLOODSERVERHOST:=127.0.0.1}"
FLOOD_FLOODSERVERPORT="${FLOOD_FLOODSERVERPORT:=3000}"
FLOOD_MAXHISTORYSTATES="${FLOOD_MAXHISTORYSTATES:=30}"
FLOOD_POLLINTERVAL="${FLOOD_POLLINTERVAL:=1000*5}"
FLOOD_SECRET="${FLOOD_SECRET:=flood}"
FLOOD_SCGIHOST="${FLOOD_SCGIHOST:=localhost}"
FLOOD_SCGIPORT="${FLOOD_SCGIPORT:=5000}"
FLOOD_SCGISOCKET="${FLOOD_SCGISOCKET:=false}"
FLOOD_SCGISOCKETPATCH="${FLOOD_SCGISOCKETPATCH:=/tmp/rtorrent.sock}"
FLOOD_SSL="${FLOOD_SSL:=false}"
FLOOD_SSLKEY="${FLOOD_SSLKEY:=/absolute/path/to/key/}"
FLOOD_SSLCERT="${FLOOD_SSLCERT:=/absolute/path/to/certicate/}"
FLOOD_TORRENTCLIENTPOLLINTERVAL="${FLOOD_TORRENTCLIENTPOLLINTERVAL:=1000*2}"

sed -i -e "s|baseURI:\s*'/'|baseURI: '$FLOOD_BASEURI'|g" /var/www/flood/config.js
sed -i -e "s|dbPath:\s*'./server/db/'|dbPath: '$FLOOD_DBPATH'|g" /var/www/flood/config.js
sed -i -e "s|floodServerHost:\s*'127.0.0.1'|floodServerHost: '$FLOOD_FLOODSERVERHOST'|g" /var/www/flood/config.js
sed -i -e "s|floodServerPort:\s*3000|floodServerPort: $FLOOD_FLOODSERVERPORT|g" /var/www/flood/config.js
sed -i -e "s|maxHistoryStates:\s*30|maxHistoryStates: $FLOOD_MAXHISTORYSTATES|g" /var/www/flood/config.js
sed -i -e "s|secret:\s*'flood'|secret: '$FLOOD_SECRET'|g" /var/www/flood/config.js
sed -i -e "s|socket:\s*false|socket: $FLOOD_SCGISOCKET|g" /var/www/flood/config.js
sed -i -e "s|socketPath:\s*'/tmp/rtorrent.sock'|socketPath: '$FLOOD_SCGISOCKETPATCH'|g" /var/www/flood/config.js
sed -i -e "s|ssl:\s*false|sslt: $FLOOD_SSL|g" /var/www/flood/config.js
sed -i -e "s|sslKey:\s*'/absolute/path/to/key/'|sslKey: '$FLOOD_SSLKEY'|g" /var/www/flood/config.js
sed -i -e "s|sslCert:\s*'/absolute/path/to/certicate/'|sslCert: '$FLOOD_SSLCERT'|g" /var/www/flood/config.js
sed -i -e "s|floodServerPort:\s*3000|floodServerPort: $FLOOD_FLOODSERVERPORT|g" /var/www/flood/config.js
sed -i -e "s|dbCleanInterval:\s*1000\s\*\s60\s\*\s60|dbCleanInterval: $FLOOD_DBCLEANINTERVAL|g" /var/www/flood/config.js
sed -i -e "s|pollInterval:\s*1000\s\*\s5|pollInterval: $FLOOD_POLLINTERVAL|g" /var/www/flood/config.js
sed -i -e "s|host:\s*'localhost'|host: '$FLOOD_SCGIHOST'|g" /var/www/flood/config.js
sed -i -e "s|port:\s*5000|port: $FLOOD_SCGIPORT|g" /var/www/flood/config.js
sed -i -e "s|torrentClientPollInterval:\s*1000\s\*\s2|torrentClientPollInterval: $FLOOD_TORRENTCLIENTPOLLINTERVAL|g" /var/www/flood/config.js