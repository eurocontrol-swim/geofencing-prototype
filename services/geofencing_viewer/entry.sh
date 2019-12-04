#!/bin/bash

env_update /app/geofencing_viewer/_config.yml /app/geofencing_viewer/config.yml && \

/usr/bin/python3 /app/geofencing_viewer/app.py

#gunicorn -k geventwebsocket.gunicorn.workers.GeventWebSocketWorker -w 1 --bind :5000 geofencing_viewer.app:flask_app
