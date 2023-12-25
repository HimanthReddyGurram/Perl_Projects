#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

my $text = <>;
chomp($text);
# Un-comment following line to take the input rather than the above string
# my $text= <STDIN>;

# text to upper case
say uc $text;

my @list = split(' ', $text);

# length of text
my $a=@list;
say "Length of the text is : $a";
print "The sorted text is : ";

# sorted text
my $joined_list =join " ",(sort(@list))  ;
say $joined_list; 

# occurence of each character
my %map=();
my @list2 = split('', $text);
for(my $i=0;$i<length($text);$i++){
    $map{$list2[$i]}+=1;
}
say Dumper(\%map);