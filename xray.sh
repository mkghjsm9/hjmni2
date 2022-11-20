#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8b05bd8d-0c4f-4e8c-bf67-99d877a2acd2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

