# php-package

[![Github Actions Status](https://github.com/hexlet-boilerplates/php-package/workflows/PHP%20CI/badge.svg)](https://github.com/hexlet-boilerplates/php-package/actions)

## Prerequisites

* Linux, Macos, WSL
* PHP >=8.2
* Xdebug
* Make
* Git

## Addons

Use <http://psysh.org/>

## Setup

Setup [SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) before clone:

```bash
git clone git@github.com:hexlet-boilerplates/php-package.git
cd php-package

make install
```

## Run linter

```sh
make lint
```

See configs [php.xml](./phpcs.xml) and [phpstan.neon](./phpstan.neon)

## Run tests

```sh
make test
```

## Test Coverage

* see `phpunit.xml`
* See [sonarcloud documentation](https://docs.sonarsource.com/sonarqube-cloud/enriching/test-coverage/php-test-coverage/)
* add `SONAR_TOKEN` to workflow as SECRETS ENV VARIABLE (for safety)

[![Hexlet Ltd. logo](https://raw.githubusercontent.com/Hexlet/assets/master/images/hexlet_logo128.png)](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=php-package)

This repository is created and maintained by the team and the community of Hexlet, an educational project. [Read more about Hexlet](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=php-package).


See most active contributors on [hexlet-friends](https://friends.hexlet.io/).
