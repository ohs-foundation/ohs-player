# Deployment Overview

## GitHub Pages

```bash
mkdocs gh-deploy
```

## Docker

```dockerfile
FROM squidfunk/mkdocs-material
COPY . /docs
```

```bash
docker build -t my-docs .
docker run --rm -p 8000:8000 my-docs
```

## Self-hosted

Build the static site and serve the `site/` directory with any static file server (nginx, Caddy, S3, etc.).
