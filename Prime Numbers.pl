#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

my $a;
my $c;
{
    print "Please enter a number: ";
    chomp($a = <>);
    redo unless $a =~ /^[0-9]+$/;
}

if($a==1){
$c++;
}elsif($a==2){
}else{
for (my $b=2;$b<$a;$b++){
if(($a%$b)==0){
    $c++;
    last;
}
} 
}

if($c>0){
    say "Not a Prime number";
}else{
    say "Prime number";
}
