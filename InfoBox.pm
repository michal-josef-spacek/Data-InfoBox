package Data::InfoBox;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_array_object check_required);

our $VERSION = 0.01;

has items => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check items.
	check_required($self, 'items');
	check_array_object($self, 'items', 'Data::InfoBox::Item');

	return;
}

1;

__END__
