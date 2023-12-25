#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

my $num;
{
    print "Please enter a number: ";
    chomp($num = <>);
    redo unless $num =~ /^[0-9]+$/;
}

my $temp 	= $num;
my $sum 	= 0;
my $len = length($num);

while($temp != 0)
{
	my $rem  = $temp % 10;
	$sum  = $sum + ($rem ** $len);
	$temp = $temp / 10;
}

if($num == $sum)
{
	print "Armstrong Number";
}
else
	{
	print "Not an Armstrong Number";
}

