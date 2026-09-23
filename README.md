# Oh My Zsh (PreCog Security Hardened Snapshot)

[![CI](https://github.com/PreCogSecurity/oh-my-zsh/actions/workflows/ci.yml/badge.svg)](https://github.com/PreCogSecurity/oh-my-zsh/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](MIT-LICENSE.txt)

Oh My Zsh is an open source, community-driven framework for managing your [Zsh](http://www.zsh.org/) configuration. This PreCog Security hardened distribution includes robust input validation hardening, automated test suites, containerized verification workflows, and strict linting enforcement.

---

## Features & Hardening

- **Hardened Shell Scripts**: Defensive patterns (`emulate -L zsh`, local variable scoping, strict error checking) across core libraries and plugins.
- **Automated Test Suite**: Unit and integration tests (`tests/run_tests.sh`) covering plugin functionality (e.g., `wd`).
- **Containerized Verification**: Docker and Docker Compose support for headless testing across isolated environments.
- **CI/CD Integration**: GitHub Actions workflow (`.github/workflows/ci.yml`) enforcing automated ShellCheck linting and Zsh test execution on every pull request.

---

## Getting Started

### Prerequisites

- Unix-based operating system (Linux, macOS, WSL)
- [Zsh](http://www.zsh.org) (v4.3.9 or newer)
- `git`, `curl` or `wget`

### Installation

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/PreCogSecurity/oh-my-zsh/master/tools/install.sh)"
```

---

## Running Tests

To run the automated test suite locally:

### Via Shell (Zsh required)
```zsh
zsh tests/run_tests.sh
```

### Via Docker
```shell
docker build -t omz-test .
docker run --rm omz-test
```

---

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

Released under the [MIT License](MIT-LICENSE.txt).
