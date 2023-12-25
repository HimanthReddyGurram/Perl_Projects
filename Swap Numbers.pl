#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

my $first;
my $second;

print "Enter your first string\n";
chomp($first = <>);

print "Enter your second string\n";
chomp($second = <>);

($first, $second) = ($second, $first);
say "'$first' '$second'";