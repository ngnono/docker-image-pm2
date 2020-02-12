#!/bin/bash
docker build --no-cache \
             --file Dockerfile \
             --tag ngnono/pm2plus:latest .
