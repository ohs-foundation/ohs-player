# Contributing

This repository uses MkDocs with the Material theme for local preview and production publishing.

## Prerequisites

- Python 3.12 or newer
- Git
- A virtual environment tool such as `python -m venv`

## Local setup

```bash
python -m venv docs/.venv
source docs/.venv/bin/activate
python -m pip install --upgrade pip
pip install -r docs/requirements.txt
```

## Run the docs locally

```bash
./docs/scripts/docs-serve.sh
```

Open `http://127.0.0.1:8000/` to preview the site.

Before opening a pull request, run:

```bash
./docs/scripts/docs-build.sh
```

Use `mike serve` if you need to preview the version selector locally.

## Documentation structure

- `mkdocs.yml` defines navigation, theme settings, plugins, and deployment behavior.
- `docs/index.md` is the landing page.
- `docs/requirements.txt` pins the documentation toolchain.
- `docs/scripts/` contains local helper commands for preview and build.
- `docs/overrides/` contains theme overrides such as the custom footer.
- `docs/getting-started/` contains onboarding and setup material.
- `docs/user-guide/` contains operator and end-user guidance.
- `docs/developer-guide/` contains contributor and implementation notes.
- `docs/deployment/` documents hosting, versioning, and release flow.
- `.github/workflows/docs.yml` builds and publishes the site.

## Adding or updating pages

1. Add or update Markdown files under `docs/`.
2. Register new pages in `nav:` inside `mkdocs.yml`.
3. Use relative links between docs pages.
4. Keep each page focused on a single topic or task.
5. Add a redirect when you rename or move a published page.

## Markdown conventions

- Use a single `#` heading per page.
- Prefer clear, task-oriented headings.
- Keep paragraphs short and direct.
- Use fenced code blocks with a language hint.
- Use admonitions for warnings, notes, and tips.
- Prefer relative links for internal documentation pages.
- Avoid raw HTML unless Markdown cannot express the content cleanly.

## Versioning workflow

This repo publishes versioned docs with `mike`.

- Pushes to `main` refresh the `dev` documentation.
- Tags matching `v*` publish a numbered release and move the `latest` alias.
- The root site redirects to `dev` until the first release is published, then to `latest`.

Common commands:

```bash
mkdocs build --strict
mike serve
mike deploy dev
mike deploy --update-aliases 1.2.0 latest
mike set-default latest
```

CI handles the remote push during normal operation. Local `mike` commands are mainly for previewing or for controlled manual publishing.

## Pull request guidelines

- Keep doc-only pull requests focused and easy to review.
- Run `mkdocs build --strict` before requesting review.
- Include screenshots when navigation or layout changes materially.
- Call out redirects when pages were moved or renamed.
- Update related docs when behavior, flags, or environment variables change.

## Deployment baseline

GitHub Actions publishes the generated site to the `gh-pages` branch. In GitHub Pages settings, configure the repository to serve from `gh-pages` and `/ (root)`. The workflow keeps `CNAME` and `.nojekyll` in sync for the docs subdomain.
