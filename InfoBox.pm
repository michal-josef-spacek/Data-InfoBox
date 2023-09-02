package Data::InfoBox;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_array_object check_array_required);

our $VERSION = 0.01;

has items => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check items.
	check_array_object($self, 'items', 'Data::InfoBox::Item');
	check_array_required($self, 'items');

	return;
}

1;

__END__
