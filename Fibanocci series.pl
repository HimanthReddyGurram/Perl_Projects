#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

# Code 1

my $limit;
{
    print "Please enter a number: ";
    chomp($limit = <>);
    redo unless $limit =~ /^[0-9]+$/;
}
my $a=0;
my $b=1;
my $c;
print "fibbonacci series:";
if($limit==1){
    print $a;
}elsif($limit==2){
    print("$a $b")
}else{
    print("$a $b ");
while ($limit>2){
$c=$a+$b;
print "$c ";
$a=$b;
$b=$c;
$limit--;
}
}

# # Code 2

# sub fibonacci {
# my($num) = @_;
# if ($num < 2) {
# 	return $num;
# }
# return fibonacci($num-1) + fibonacci($num-2);
# }

# my $num;
# {
#     print "Please enter a number: ";
#     chomp($num = <>);
#     redo unless $num =~ /^[0-9]+$/;
# }

# for (my $i = 0; $i < $num; $i++){
#     print(fibonacci($i)," ");
# }


