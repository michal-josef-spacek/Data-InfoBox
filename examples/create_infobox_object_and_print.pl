#!/usr/bin/env perl

use strict;
use warnings;

use Data::InfoBox;
use Data::InfoBox::Item;
use Data::Text::Simple;

my $obj = Data::InfoBox->new(
        'items' => [
               Data::InfoBox::Item->new(
                       'text' => Data::Text::Simple->new(
                               'text' => 'First item',
                       ),
               ),
               Data::InfoBox::Item->new(
                       'text' => Data::Text::Simple->new(
                               'text' => 'Second item',
                       ),
               ),
        ],
        'title' => Data::Text::Simple->new(
               'text' => 'Info box title',
        ),
);

# Print out.
print 'title: '.$obj->title->text."\n";
my $num = 0;
foreach my $item (@{$obj->items}) {
        $num++;
        print "Item $num: ".$item->text->text."\n";
}

# Output:
# title: Info box title
# Item 1: First item
# Item 2: Second item