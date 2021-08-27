#!/bin/sh
echo "v1.0"
echo "Generating config files..."

cp /factorio/settings/map-settings.json /factorio/map-settings.json

envsubst '${SERVER_NAME},${SERVER_DESCRIPTION},${MAX_PLAYERS},${USERNAME},${PASSWORD},${SERVER_PASSWORD},${ADMIN_NAME}' < /factorio/settings/server-settings.json > /factorio/server-settings.json 
envsubst '${PEACEFUL_MODE}' < /factorio/settings/map-gen-settings.json > /factorio/map-gen-settings.json

echo "Config files generation done"
echo "creating new game file..."

#ls /factorio
save_file=/factorio/saves/current_game.zip

if [ ! -f "$save_file" ]
then
	echo "Save file not found"
fi
./new_game.sh

echo "creating new game file done"
echo "Starting server..."
./start_server.sh
