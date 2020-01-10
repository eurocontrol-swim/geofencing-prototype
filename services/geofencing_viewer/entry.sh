#!/bin/bash

env_update /app/geofencing_viewer/_config.yml /app/geofencing_viewer/config.yml && \

/usr/bin/python3 /app/geofencing_viewer/app.py
