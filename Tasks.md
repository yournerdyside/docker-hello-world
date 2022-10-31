# Tasks:

- Run linting rules in CI
- Run tests in CI
- Deploy app only for production branch (if not exist create branch)
- Dockerize app
  - Create separate job/runner with name build
  - Build image
  - Push it to DockerHub
  - Reuse it in CI/CD job/runner

P.S. For each step you should create Pull Request (PR) with new branch
