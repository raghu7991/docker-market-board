# Market Board - nginx in Docker

A static site served by nginx in a custom Docker image.

## Features
- Custom nginx config with a `/health` endpoint (JSON, access logs off)
- Custom 404 page
- Versioned images (`v1`, `v2`, `v3`) for easy rollback

## Run
    docker build -t market-board:v3 .
    docker run -d --name web -p 8080:80 market-board:v3
    curl localhost:8080/health

## What I practised
- Bind mounts (dev) vs baking files into the image (prod)
- Debugging with docker logs, exec, inspect, diff
- Incident drills: broken config, port conflict, container hot-fix (restart vs recreate)
