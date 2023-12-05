use strict;
use warnings;

use Mock::Person::SK::ROM;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Mock::Person::SK::ROM::VERSION, 0.04, 'Version.');
