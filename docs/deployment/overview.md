# Deployment Overview

## Production target

This site is built with MkDocs and published to GitHub Pages. The public production URL is `https://ohs.ohsplayer.dev/`.

## CI/CD flow

- `.github/workflows/docs.yml` runs on pull requests, pushes to `main`, and version tags that match `v*`.
- The workflow installs pinned dependencies from `requirements.txt`.
- `mkdocs build --strict` fails the job on broken navigation, missing pages, or invalid links.
- Pushes to `main` refresh the `dev` version of the docs.
- Version tags publish a numbered release and move the `latest` alias.

## GitHub Pages settings

Configure the repository once in GitHub:

1. Open `Settings -> Pages`.
2. Set the source to `Deploy from a branch`.
3. Select `gh-pages` and `/ (root)`.
4. Add the custom domain `ohs.ohsplayer.dev`.
5. Enable HTTPS after the certificate is issued.

The workflow maintains the `CNAME` and `.nojekyll` files on the publishing branch so the subdomain keeps working after every deploy.

## Versioning model

This repo uses `mike` with Material for MkDocs.

- `dev` is the rolling documentation published from `main`.
- `latest` points to the most recent tagged release.
- Released versions remain available at stable version paths such as `/1.2.0/`.

Before the first release tag exists, the root site redirects to `dev`. After the first release, the root site redirects to `latest`.

## Local and manual commands

```bash
mkdocs build --strict
mike serve
mike deploy dev
mike deploy --update-aliases 1.2.0 latest
mike set-default latest
```

CI should handle normal publishing. Use manual `mike` commands only when you intentionally need to repair or republish the docs branch.
