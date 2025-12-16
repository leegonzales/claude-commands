---
allowed-tools: Read, Glob, Grep, Bash(ls:*), Bash(tree:*), Bash(cat:*)
description: Prime Claude with comprehensive project context
---

## Project Context Loading

### 1. Project Structure
!`tree -L 2 -I 'node_modules|venv|.git|__pycache__|dist|build' 2>/dev/null || ls -la`

### 2. Configuration Files
Read key config files if they exist:
- `package.json` / `Cargo.toml` / `go.mod` / `pyproject.toml` / `Gemfile`
- `tsconfig.json` / `setup.cfg` / `.eslintrc*`
- `Dockerfile` / `docker-compose.yml`
- `CLAUDE.md` / `README.md`

### 3. Recent Activity
!`git log --oneline -10 2>/dev/null || echo "Not a git repo"`

### 4. Key Patterns

Identify and summarize:
- **Architecture**: Monolith, microservices, serverless?
- **Framework**: React, Django, Rails, Express, etc.?
- **Testing**: Jest, pytest, Go testing, RSpec?
- **Build**: Webpack, Vite, Make, Cargo?
- **Deployment**: Docker, K8s, Vercel, AWS?

### 5. Entry Points

Locate:
- Main application entry
- API routes / endpoints
- Database models
- Key business logic

### Output

Provide a concise summary:
1. What this project does
2. Tech stack
3. Project structure overview
4. Key files to know about
5. How to run/test locally
