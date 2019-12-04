#!/bin/bash

env_update /app/geofencing_service/_config.yml /app/geofencing_service/config.yml && \

gunicorn -w 1 --bind :8081 geofencing_service.wsgi:app
