#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

print "Enter something\n";
$a = <STDIN>;
chomp $a;

if($a =~ /^[+-]?\d+\.?\d*$/){
    say $a, " is a number";
}else{
    say $a, " is not a number";
}

