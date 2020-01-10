#!/bin/bash

env_update /app/provision/_config.yml /app/provision/config.yml

echo "Waiting for DB..."

python3 /app/provision/provision_db.py
