use strict;
use warnings;

use Data::InfoBox::Item;
use Data::Text::Simple;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 7;
use Test::NoWarnings;
use Unicode::UTF8 qw(decode_utf8);

# Test.
my $obj = Data::InfoBox::Item->new(
	'text' => Data::Text::Simple->new(
		'text' => 'Text',
	),
);
isa_ok($obj, 'Data::InfoBox::Item');

# Test.
$obj = Data::InfoBox::Item->new(
	'icon_url' => 'https://example.com/icon.ico',
	'text' => Data::Text::Simple->new(
		'text' => 'Text',
	),
	'url' => 'https://example.com',
);
isa_ok($obj, 'Data::InfoBox::Item');

# Test.
$obj = Data::InfoBox::Item->new(
	'icon_utf8' => decode_utf8('⌂'),
	'text' => Data::Text::Simple->new(
		'text' => 'Text',
	),
	'url' => 'https://example.com',
);
isa_ok($obj, 'Data::InfoBox::Item');

# Test.
eval {
	Data::InfoBox::Item->new(
		'icon_utf8' => 'bad',
		'text' => Data::Text::Simple->new(
			'text' => 'Text',
		),
	);
};
is($EVAL_ERROR, "Parameter 'icon_utf8' has length greater than '1'.\n",
	"Parameter 'icon_utf8' has length greater than '1' (bad).");
clean();

# Test.
eval {
	Data::InfoBox::Item->new;
};
is($EVAL_ERROR, "Parameter 'text' is required.\n",
	"Parameter 'text' is required.");
clean();

# Test.
eval {
	Data::InfoBox::Item->new(
		'text' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'text' must be a 'Data::Text::Simple' object.\n",
	"Parameter 'text' must be a 'Data::Text::Simple' object (bad).");
clean();
