use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Test::Shared::Fixture::Data::InfoBox::Items;

# Test.
my $obj = Test::Shared::Fixture::Data::InfoBox::Items->new;
my $ret = $obj->title;
is($ret, undef, 'Get title (undef).');
