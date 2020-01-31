#!/bin/bash

echo "************************************************************"
echo "Setting up users..."
echo "************************************************************"

# create app user/database
nohup gosu mongodb mongo "${DB_NAME}" --eval "db.createUser({ user: '${DB_USER}', pwd: '${DB_PASS}', roles: [{ role: 'readWrite', db: '${DB_NAME}' }, { role: 'read', db: 'local' }]});"

echo "************************************************************"
echo "Shutting down"
echo "************************************************************"
nohup gosu mongodb mongo admin --eval "db.shutdownServer();"
