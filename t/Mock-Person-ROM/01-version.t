# Pragmas.
use strict;
use warnings;

# Modules.
use Mock::Person::ROM;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Mock::Person::ROM::VERSION, 0.01, 'Version.');
