#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

sub fact
{
my $x = $_[0];
if ($x == 0 || $x == 1)
{
    return 1;
}
else
{
    return $x * fact($x - 1);
}
}

{
    print "Please enter a number: ";
    chomp($a = <>);
    redo unless $a =~ /^[0-9]+$/;
}
print "Factorial of a number $a is ", fact($a);