#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;
# use lib "<path>";

# To run this file - after going to the file directory, using the following command : " perl -I ./ file_operations.pl "

open(Data, "<", "employee_records.txt") or die "Couldn't open file data.txt !";
# print <Data>;
my @lines = <Data>; 
close(Data);

use Employee;
my $a= $Employee::method;

for(my $i=0;$i<scalar(@lines);$i++){
    my @spl = split(',', $lines[$i]);
    my $Employee = Employee->new($spl[0],$spl[1],$spl[2],$spl[3],$spl[4],$spl[5],$spl[6],$spl[7]);
    if($a=="1"){
    if($Employee->salary_range ne ""){   # for getting values based on salary limits
    say $Employee->salary_range;
    }}elsif($a=="2"){
    if($Employee->field ne ""){          # employee working in 'x' department;
    say $Employee->field;
    }}elsif($a=="3"){
    if($Employee->date_range ne ""){     # employees joining between date (after and between)
    say $Employee->date_range;
    }}
}








