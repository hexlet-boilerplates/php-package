# Порог покрытия: ниже него `make test-coverage` падает,
# и сборка в CI краснеет вместе с ним
COVERAGE_MIN ?= 80

install:
	composer install

console:
	composer exec --verbose psysh

lint:
	composer exec --verbose mago -- format --dry-run
	composer exec --verbose mago -- lint
	composer exec --verbose mago -- analyze

lint-fix:
	composer exec --verbose mago -- format
	composer exec --verbose mago -- lint --fix

test:
	composer exec --verbose phpunit tests

test-coverage:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-clover=build/logs/clover.xml
# Код проверки идёт одной строкой: перенос обратным слешем внутри одинарных
# кавычек это литеральный слеш, а не продолжение строки, и php его не разбирает
	@php -r '$$m = simplexml_load_file("build/logs/clover.xml")->project->metrics; $$total = (int) $$m["statements"]; $$covered = (int) $$m["coveredstatements"]; $$pct = $$total > 0 ? $$covered / $$total * 100 : 100.0; printf("Total coverage: %.2f%% (min %d%%)\n", $$pct, $(COVERAGE_MIN)); exit($$pct + 1e-9 < $(COVERAGE_MIN) ? 1 : 0);'

test-coverage-text:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-text
