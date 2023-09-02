package Test::Shared::Fixture::Data::InfoBox::Street;

use base qw(Data::InfoBox);
use strict;
use warnings;

use Data::InfoBox::Item;
use Data::Text::Simple;
use Unicode::UTF8 qw(decode_utf8);

our $VERSION = 0.01;

sub new {
	my $class = shift;

	my @params = (
		'items' => [
			Data::InfoBox::Item->new(
				'text' => Data::Text::Simple->new(
					'lang' => 'cs',
					'text' => decode_utf8('Nábřeží Rudoarmějců'),
				),
			),
			Data::InfoBox::Item->new(
				'text' => Data::Text::Simple->new(
					'lang' => 'cs',
					'text' => decode_utf8('Příbor'),
				),
			),
			Data::InfoBox::Item->new(
				'text' => Data::Text::Simple->new(
					'lang' => 'cs',
					'text' => decode_utf8('Česká republika'),
				),
			),
		],
	);

	my $self = $class->SUPER::new(@params);

	return $self;
}

1;

__END__
