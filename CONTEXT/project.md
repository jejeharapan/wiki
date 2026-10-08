# Project Context & Specifications

## 1. Executive Summary
This project focuses on building an enterprise Wiki / Step-by-Step Guide platform for internal corporate tools of **Jeje Harapan Transindo (Jeje Trans)**, accessible at `wiki.jejeharapan.com`.

---

## 2. Operational Rules & Persona
* **Role**: System Developer / Implementor.
* **Tone**: Direct, result-oriented, non-sweet, focused on tangible deliverables.
* **Governance**:
  * Implement features strictly according to explicit manager instructions.
  * Clarifications may be requested in batches of up to 20 questions at once.
  * **Testing Constraint**: Every test and build command MUST be executed inside Docker. Installing dependencies or packages directly into the host OS is strictly prohibited.
  * **Build Instruction**: The agent MUST NOT execute `docker build` or `docker compose` build commands. The Manager will run build and test commands manually.
* **Context Preservation Rule**: Every update to project logic, requirements, or architecture must be updated in `/CONTEXT/project.md`.
* **Agent & Skill Reusability Rule**: Reusable agent or skill execution flows must be documented under `/CONTEXT/AGENT/<agent_name>.md` and `/CONTEXT/SKILL/<skill_name>.md`.

---

## 3. Technology Stack, Branding & Deployment
* **Corporate Identity**: **Jeje Harapan Transindo (Jeje Trans)**
* **Target FQDN**: `https://wiki.jejeharapan.com`
* **Brand Color Palette & Theme Overrides**: Implemented via native template override `overrides/main.html` (`custom_dir: overrides` in `mkdocs.yml`).
* **Frontmatter Metadata UI Rendering**: Automatically renders `author` (`Penulis:`) and `last_updated` (`Terakhir Diperbarui:`) frontmatter keys into a compact metadata badge at the top of article content (`font-size: 11pt`, `padding: 4px 10px`) via `overrides/main.html`.
* **Image Resizing & Centering Syntax**:
  * Resizing: Use `![alt text](image.png){ width="30%" }` or `width="300"`.
  * Centering: Use `![alt text](image.png){ width="30%" .center }` (via `.center` utility class in `overrides/main.html`) or inline `{ style="display: block; margin: 0 auto;" }`. HTML `align=center` is invalid in CSS/Markdown and will not center images.
* **Table of Contents Depth**: Restricted to second-level headings (`##`) across all pages via `markdown_extensions.toc.toc_depth: 2` in `mkdocs.yml`.
* **Collapsible Groups & Navigation**: In-page Markdown accordions (`pymdownx.details` via `??? note "Title"`) and content mini tabs (`pymdownx.tabbed` via `=== "Tab Title"`).
* **Documentation Engine**: Python MkDocs with standard `mkdocs-material` theme + native overrides
* **Containerization**: Single-stage Docker container running `mkdocs serve --dev-addr=0.0.0.0:80` directly from `squidfunk/mkdocs-material:latest` without Nginx.
* **Orchestration & Deployment**:
  * Local Development: `docker-compose.yaml`
  * Coolify Production Deployment:
    - Docker Compose Build Mode: via `docker-compose-coolify.yaml`
    - Railpack / Nixpacks Mode: via `Procfile`, `nixpacks.toml`, and `requirements.txt`
* **Environment Configuration**: Keyed via `.env` file (`.env.example` provided as template)
  * `APP_PORT`: Optional host port setting. When specified (e.g. `APP_PORT=8080`), publishes `${APP_PORT}:80` for direct IP:PORT access. When set to `null`/empty, host port publication is bypassed, restricting access strictly through the specified `SITE_URL` reverse proxy (Traefik / Coolify FQDN).

---

## 4. Directory & Article Hierarchy
All articles must follow a structured, multi-level folder hierarchy:

```
.
├── CONTEXT/
│   ├── project.md
│   ├── AGENT/
│   │   └── system_developer.md
│   └── SKILL/
│       ├── article_management.md
│       └── coolify_deployment.md
├── mkdocs.yml
├── Dockerfile
├── Procfile
├── nixpacks.toml
├── .env
├── .env.example
├── docker-compose.yaml
├── docker-compose-coolify.yaml
├── requirements.txt
└── article/
    ├── index.md
    ├── tutorial.md
    ├── JXFleet/
    ├── TMS/
    └── FATTrack/
```

---

## 5. Current Project Status & Completed Deliverables
* **Status**: Complete & Production Ready.
* **Deliverables**:
  1. `docker-compose-coolify.yaml` configured for Coolify deployment via Docker Compose build mode.
  2. Dynamic `APP_PORT` support added (IP:PORT binding when set, strictly `SITE_URL` reverse proxy when empty/null).
  3. `.env` and `.env.example` created for runtime environment settings.
  4. Single-stage `Dockerfile` serving MkDocs Material directly on port 80 without Nginx.
  5. Sample documentation created in `/article` adhering strictly to the requested nested structure (`group1/subgroup1/subsubgroup1/...`).
  6. Tutorial documentation created at **[`/article/tutorial.md`](file:///home/ubuntu/app/com.jejeharapan/wiki/article/tutorial.md)** detailing MkDocs writing standards in Bahasa Indonesia with live interactive previews. Hidden from top navigation tabs via explicit navigation listing in **[`/article/.pages`](file:///home/ubuntu/app/com.jejeharapan/wiki/article/.pages)** (omitting `tutorial.md`), making it strictly accessible via internal link from Beranda (**[`/article/index.md`](file:///home/ubuntu/app/com.jejeharapan/wiki/article/index.md)**).
  7. Coolify deployment optimization: Added full support for Nixpacks/Railpack deployment via `Procfile`, `nixpacks.toml`, and complete Python dependencies in `requirements.txt`.

