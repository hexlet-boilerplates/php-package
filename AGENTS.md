# AGENTS.md

Шаблон пакета на PHP. Код лежит в `src/`, тесты PHPUnit в `tests/`, исполняемый файл `bin/php-package`.

## Команды

| Команда | Что делает |
| --- | --- |
| `make install` | Ставит зависимости через Composer и git-хуки |
| `make console` | Открывает консоль psysh |
| `make test` | Запускает тесты |
| `make test-coverage` | Считает покрытие и падает, если оно ниже 80 процентов, нужен Xdebug |
| `make test-coverage-text` | Печатает покрытие текстом |
| `make lint` | Проверяет форматирование, стиль и типы через Mago |
| `make lint-fix` | Исправляет форматирование и то, что Mago умеет исправить сам |

## Проверки

`make lint` также проверяет Markdown (`rumdl`), опечатки (`typos`) и workflow GitHub Actions (`jactionlint`). `make install` ставит git-хуки hk, перед коммитом они запускают `make lint`, перед push `make test`.

Перед завершением задачи запусти `make lint` и `make test`, обе команды должны проходить.

## Окружение

Инструменты и их версии задаёт `mise.toml`, ставит их `mise install`.
