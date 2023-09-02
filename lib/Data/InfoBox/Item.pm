package Data::InfoBox::Item;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_isa check_length check_required);

our $VERSION = 0.01;

has icon_url => (
	is => 'ro',
);

has icon_utf8 => (
	is => 'ro',
);

has text => (
	is => 'ro',
);

has url => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check icon_url.
	# TODO

	# Check icon_utf8.
	check_length($self, 'icon_utf8', 1);

	# Check text.
	check_required($self, 'text');
	check_isa($self, 'text', 'Data::Text::Simple');

	return;
}

1;

__END__
