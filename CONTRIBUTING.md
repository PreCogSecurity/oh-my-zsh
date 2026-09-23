# Contributing to Oh My Zsh (PreCog Security)

Thank you for your interest in contributing! To maintain high standards of code quality, security, and reliability, please adhere to the following guidelines when contributing to this repository.

## Development Workflow

1. **Small, Focused Commits**: Keep each feature or bug fix in its own commit or pull request, accompanied by unit tests proving the behavior.
2. **Linting**: Ensure all shell scripts pass `shellcheck` with zero warnings or errors.
3. **Testing**: Add or update test specs under `tests/` for any new plugin or library function added.
4. **Verification**: Run the test suite locally using `zsh tests/run_tests.sh` or via Docker (`docker build -t omz-test . && docker run --rm omz-test`).

## Submitting Pull Requests

- Open a pull request against the `master` / `main` branch.
- Ensure all CI checks (ShellCheck lint and Zsh test suite) pass successfully.
- Provide a clear engineering and security rationale for your changes in the PR description.
