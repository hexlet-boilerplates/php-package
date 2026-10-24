# php-package

[![Github Actions Status](https://github.com/hexlet-boilerplates/php-package/workflows/PHP%20CI/badge.svg)](https://github.com/hexlet-boilerplates/php-package/actions)

## Prerequisites

- Linux, Macos, WSL
- [mise](https://mise.jdx.dev/), it installs PHP, Composer, mago and hk from `mise.toml`
- Xdebug or PCOV (only for test coverage, mise does not provide them)
- Make
- Git

## Addons

Use <http://psysh.org/>

## Setup

Setup [SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) before clone:

```bash
git clone git@github.com:hexlet-boilerplates/php-package.git
cd php-package

mise install
make install
```

`make install` also installs the git hooks: `hk` runs the checks before a commit and the tests before a push.

## Run linter

```sh
make lint
```

See config [mago.toml](./mago.toml)

## Run tests

```sh
make test
```

## Test Coverage

```sh
make test-coverage
# see ./build/logs/clover.xml
```

- the set of files under coverage is declared in `phpunit.xml`
- the threshold is `COVERAGE_MIN` in the [Makefile](./Makefile) — `make test-coverage` exits with an error below it, so the PHP CI badge stays green only while coverage holds
- requires the Xdebug or PCOV extension, otherwise PHPUnit reports `No code coverage driver available`

[![Hexlet Ltd. logo](https://raw.githubusercontent.com/Hexlet/assets/master/images/hexlet_logo128.png)](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=php-package)

This repository is created and maintained by the team and the community of Hexlet, an educational project. [Read more about Hexlet](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=php-package).
