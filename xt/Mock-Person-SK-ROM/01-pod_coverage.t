use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Mock::Person::SK::ROM', 'Mock::Person::SK::ROM is covered.');
