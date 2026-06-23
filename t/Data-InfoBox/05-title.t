use strict;
use warnings;

use Data::InfoBox;
use Data::InfoBox::Item;
use Data::Text::Simple;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::InfoBox->new(
	'items' => [
		Data::InfoBox::Item->new(
			'text' => Data::Text::Simple->new(
				'text' => 'foo',
			),
		),
	],
);
my $ret = $obj->title;
is($ret, undef, 'Get title (undef - default).');

# Test.
$obj = Data::InfoBox->new(
	'items' => [
		Data::InfoBox::Item->new(
			'text' => Data::Text::Simple->new(
				'text' => 'foo',
			),
		),
	],
	'title' => Data::Text::Simple->new(
		'text' => 'Title',
	),
);
$ret = $obj->title;
isa_ok($ret, 'Data::Text::Simple');
is($ret->text, 'Title', 'Get title (Title).');
