# SKILL: Coolify Deployment Flow

## Overview
Workflow for deploying the Python MkDocs Corporate Wiki using Coolify via Docker Compose build method.

## Naming Convention Rules
- Coolify configuration files **MUST** use the `-coolify.yaml` suffix (e.g., `docker-compose-coolify.yaml`).
- Standard local development configuration uses `docker-compose.yaml`.

## Deployment Requirements
1. **Build Mode**: Coolify configured to build from repository source using Docker Compose mode.
2. **Compose Spec**: `docker-compose-coolify.yaml` specifies the build context, Dockerfile, environment variables, health checks, and restart policies.
3. **Environment & Port Mapping**:
   - `.env` variables mapped seamlessly via Coolify environment settings interface.
   - `APP_PORT` set to a port number (e.g. `8080`): publishes `${APP_PORT}:80` for direct IP:PORT access.
   - `APP_PORT` left empty/null: omits host port binding, routing traffic exclusively via Coolify's reverse proxy (`SITE_URL`).
4. **Health Check**: Endpoint polling on `/` to guarantee container readiness.

## Verification Checklist
- Run local docker compose build using `docker-compose -f docker-compose-coolify.yaml build` to verify configuration validity before triggering Coolify deployments.
