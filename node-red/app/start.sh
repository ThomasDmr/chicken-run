#!/bin/bash

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
export NODE_PATH=$(npm root -g)

# Make the default flows available in the user library
mkdir -p /data/node-red/user/lib/flows || true
# cp /usr/src/app/flows/* /data/node-red/user/lib/flows/
cp /usr/src/app/flows/flows.json /data/node-red/user/flows.json

# Start node-red
node-red --settings /usr/src/app/settings.js
