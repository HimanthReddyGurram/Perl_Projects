#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

open(Data, "<", "employee_records.txt") or die "Couldn't open file data.txt !";
my @lines = <Data>;
close(Data);



# # for getting values based on salary limits
# say "enter a range of salaries to get the dresired matching values: values ranging from 1000 to 100000";
# say "enter starting limit : ";
# my $starting_limit = <>;
# say "enter ending limit : ";
# my $ending_limit=<>;

# for(my $i=0;$i<scalar(@lines);$i++){
#     my @spl = split(',', $lines[$i]);
#     if($spl[5]<$ending_limit && $spl[5]>$starting_limit){
#         my $joined_list =join " ",(@spl);
#         say $joined_list;
#     }
# }





# # employee working in 'x' department;

# my @user_list=("user id","first name","last name","sex","email","salary","date of birth","job title");
# my $index = -1;

# say Dumper(\@user_list);
# say "choose the exact from above values";

# while($index<0){
# say "enter the name of the field you want to search : ";
# my $element_to_find = <>;
# chomp($element_to_find);
# for my $i (0 .. $#user_list) {
#     if ($user_list[$i] eq $element_to_find) {
#         $index = $i;
#         last;
#     }
# }
# }

# say "enter the pattern you want to match with : ";
# my $x = <>;
# chomp($x);

# for(my $i=0;$i<scalar(@lines);$i++){
#     my @spl = split(',', $lines[$i]);
#     if($spl[$index] =~ /$x/i){
#     # if($spl[$index] =~ m{^$x$}){ # uncomment this and comment the above line if you want to match the exact value
#         my $joined_list =join " ",(@spl);
#         say $joined_list;
#     }
# }






# employees joining between date (after and between)

say "enter starting date : ";
my $starting_date = <>;
chomp($starting_date);

say "enter ending date : ";
my $ending_date=<>;
chomp($ending_date);

for(my $i=0;$i<scalar(@lines);$i++){
    my @spl = split(',', $lines[$i]);

    my @emp_date = split('-', $spl[6]);
    my $employee_date =join "",(@emp_date);

    my @star = split('-', $starting_date);
    my @end = split('-', $ending_date);
    my $start_date =join "",(@star);
    my $end_date =join "",(@end);

    if($employee_date lt $end_date && $employee_date gt $start_date){
        my $joined_list =join " ",(@spl);
        say $joined_list;
    }
}









