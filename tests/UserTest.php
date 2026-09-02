<?php

declare(strict_types=1);

namespace Php\Package\Tests;

use Php\Package\User;
use PHPUnit\Framework\TestCase;

class UserTest extends TestCase
{
    public function testGetName(): void
    {
        $name = 'john';
        $children = [new User('Mark')];
        $user = new User($name, $children);

        $this->assertEquals($name, $user->getName());
        $this->assertEquals(collect($children), $user->getChildren());
    }
}
