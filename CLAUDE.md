# CLAUDE.md

This file provides guidance for AI assistants working with this codebase.

## Project Overview

This is a PHP package boilerplate from Hexlet educational platform (`hexlet/php-package`). It serves as a template for creating PHP libraries with proper tooling, testing, and CI/CD setup. The package includes a simple `User` class as an example implementation.

## Codebase Structure

```
php-package/
├── src/                    # Source code (PSR-4 autoloaded as Php\Package\)
│   └── User.php           # Example class with name and children properties
├── tests/                  # Test files (PSR-4 autoloaded as Php\Package\Tests\)
│   └── UserTest.php       # PHPUnit tests for User class
├── bin/                    # CLI executables
│   └── php-package        # CLI entry point script
├── .github/workflows/      # GitHub Actions CI configuration
│   └── workflow.yml       # PHP CI workflow
├── composer.json          # Dependencies and autoloading config
├── Makefile               # Development task runner
├── phpunit.xml            # PHPUnit configuration
├── phpstan.neon           # PHPStan static analysis config
├── .codeclimate           # Code Climate analysis engines config
└── psysh.php              # PsySH REPL bootstrap file
```

## Development Commands

All development tasks are run via Make. Use these commands:

| Command | Description |
|---------|-------------|
| `make install` | Install Composer dependencies |
| `make test` | Run PHPUnit tests |
| `make test-coverage` | Run tests with code coverage (outputs to `build/logs/clover.xml`) |
| `make lint` | Run PHP CodeSniffer (PSR-12) and PHPStan (level 8) |
| `make lint-fix` | Auto-fix code style issues with PHP Code Beautifier |
| `make console` | Launch PsySH interactive PHP shell |

## Key Dependencies

### Production
- `tightenco/collect` - Laravel's Collection class (standalone)
- `nesbot/carbon` - DateTime library
- `symfony/string` - String manipulation utilities
- `phpstan/phpstan` - Static analysis tool

### Development
- `phpunit/phpunit` (^9.1.3) - Testing framework
- `squizlabs/php_codesniffer` (^3.5.5) - Code style checker (PSR-12)
- `phpstan/phpstan-phpunit` - PHPStan PHPUnit extension
- `psy/psysh` - Interactive PHP REPL
- `symfony/var-dumper` - Enhanced var_dump

## Code Conventions

### Namespace Structure
- Source files: `Php\Package\` namespace, located in `src/`
- Test files: `Php\Package\Tests\` namespace, located in `tests/`

### Coding Standards
- **PSR-12** coding style (enforced by phpcs)
- Use typed properties and return types (PHP 7.4+)
- PHPStan level 8 for static analysis (level 6 in config file, level 8 in Makefile)

### Testing Conventions
- Test classes extend `PHPUnit\Framework\TestCase`
- Test methods prefixed with `test` (e.g., `testGetName`)
- Test class names: `{ClassName}Test.php`
- Use void return type for test methods

## CI/CD Pipeline

GitHub Actions workflow (`.github/workflows/workflow.yml`) runs on push and pull requests:
1. **Setup**: PHP 7.4 on Ubuntu latest
2. **Install**: `make install`
3. **Lint**: `make lint` (phpcs + phpstan)
4. **Test**: `make test-coverage` with Code Climate reporting

### Code Climate Integration
- Requires `CC_TEST_REPORTER_ID` secret for coverage reporting
- Engines enabled: duplication, fixme, phpmd

## Adding New Classes

1. Create class file in `src/` with `Php\Package` namespace
2. Create corresponding test file in `tests/` with `Php\Package\Tests` namespace
3. Run `make lint` to verify code style
4. Run `make test` to verify tests pass

## Common Patterns

### Using Collections
The codebase uses Laravel Collections via `tightenco/collect`:
```php
use Tightenco\Collect\Support\Collection;

$this->items = collect($array);  // Create collection from array
```

### Class Structure Example
```php
<?php

namespace Php\Package;

class MyClass
{
    private string $property;

    public function __construct(string $property)
    {
        $this->property = $property;
    }

    public function getProperty(): string
    {
        return $this->property;
    }
}
```

## Troubleshooting

- **Lint errors**: Run `make lint-fix` to auto-fix style issues
- **Missing dependencies**: Run `make install`
- **REPL not working**: Ensure `composer install` completed and run `make console`
