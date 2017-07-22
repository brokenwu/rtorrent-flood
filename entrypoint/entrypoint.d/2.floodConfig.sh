#!/usr/bin/bash
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
sed -i -e "s|sslCert:\s*'/absolute/path/to/certificate/'|sslCert: '$FLOOD_SSLCERT'|g" /var/www/flood/config.js
sed -i -e "s|floodServerPort:\s*3000|floodServerPort: $FLOOD_FLOODSERVERPORT|g" /var/www/flood/config.js
sed -i -e "s|dbCleanInterval:\s*1000\s\*\s60\s\*\s60|dbCleanInterval: $FLOOD_DBCLEANINTERVAL|g" /var/www/flood/config.js
sed -i -e "s|pollInterval:\s*1000\s\*\s5|pollInterval: $FLOOD_POLLINTERVAL|g" /var/www/flood/config.js
sed -i -e "s|host:\s*'localhost'|host: '$FLOOD_SCGIHOST'|g" /var/www/flood/config.js
sed -i -e "s|port:\s*5000|port: $FLOOD_SCGIPORT|g" /var/www/flood/config.js
sed -i -e "s|torrentClientPollInterval:\s*1000\s\*\s2|torrentClientPollInterval: $FLOOD_TORRENTCLIENTPOLLINTERVAL|g" /var/www/flood/config.js