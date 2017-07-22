#!/usr/bin/bash
for FILE in /entrypoint/entrypoint.d/*.sh
do
  source ${FILE}
done

exec "$@"