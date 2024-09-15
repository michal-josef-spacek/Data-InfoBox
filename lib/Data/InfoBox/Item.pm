package Data::InfoBox::Item;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.08 qw(check_isa check_length check_required);
use Mo::utils::URI 0.02 qw(check_location);

our $VERSION = 0.01;

has icon_url => (
	is => 'ro',
);

has icon_char => (
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
	check_location($self, 'icon_url');
	# TODO Check image

	# Check icon_char.
	check_length($self, 'icon_char', 1);

	# Check text.
	check_required($self, 'text');
	check_isa($self, 'text', 'Data::Text::Simple');

	# Check url.
	check_location($self, 'url');

	return;
}

1;

__END__
