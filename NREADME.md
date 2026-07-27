# My Portfolio Site

A React + TypeScript portfolio website that can be run and built easily with Docker.

## Prerequisites

Make sure Docker and Docker Compose are installed on your machine.

## Run the app with Docker

From the project root, run:
docker compose up --build
```

Open your browser at:

```text
http://localhost:5173
```

This starts the Vite development server inside a container and mounts your local files so changes appear live in the browser.

## Stop the app

```bash
docker compose down
```

## Build for production

To create a production build:

```bash
docker compose run --rm app npm run build
```

The build output will be generated in the dist folder.

## Preview the production build

```bash
docker compose run --rm -p 4173:4173 app npm run preview -- --host 0.0.0.0
```

Then open:

```text
http://localhost:4173
```

## Useful commands

```bash
# Rebuild the image only
docker compose build

# Run a one-off command inside the container
docker compose run --rm app npm install
```

## Notes

- The container uses a bind mount, so your local edits are reflected inside the app.
- Live reload is enabled through Vite polling settings in the Docker setup.