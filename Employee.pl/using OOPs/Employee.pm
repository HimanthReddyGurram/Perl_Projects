package Employee;
use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

sub new{
    my ($class,$user_id, $first_name, $last_name, $sex, $email, $salary,$date_of_birth,$job_title) = @_;

    my $self={
        user_id=>$user_id,
        first_name => $first_name,
        last_name => $last_name,
        sex => $sex,
        email => $email,
        salary => $salary,
        date_of_birth => $date_of_birth,
        job_title => $job_title,
    };

    bless $self,$class;
    return $self;
};


say("For getting employee data based on salary range, please enter '1'");
say("For getting employee data based on matching values in specific fields, please enter '2'");
say("For getting employee data based on date range, please enter '3'");

my @val=('1','2','3');
my $ind = -1;
our $method;

while($ind<0){
say "Please enter your desired option : ";
$method = <>;
chomp($method);# 7 2
for my $i (0 .. $#val) {
    if ($val[$i] eq $method) {
        $ind = $i;
        last;
    }
}
}
if($method=="1"){
# for getting values based on salary limits
say "The salary range starts from 1000 to 1000000 in our data, so please select in that range.";
say "Please enter only numerical values";
print "Enter the lowest range from where you want to print the values : ";
my $low_range = <>;
chomp($low_range);

print "Enter the highest range up to which you want to print the values : ";
my $high_range = <>;
chomp($high_range);

sub salary_range{
    my $self=shift @_;
    my $a=$self->{salary};
    if( $a < $high_range && $a > $low_range ){
        return $self->{user_id} ." " . $self->{first_name} ." " . $self->{last_name} ." " . $self->{sex} ." " . $self->{email} ." " . $self->{salary} ." " . $self->{date_of_birth} ." " . $self->{job_title};
    }
    else{
        return "";
    }
};
}
elsif($method=="2"){

# employee working in 'x' department;

my @user_list=("user_id","first_name","last_name","sex","email","salary","date_of_birth","job_title");
my $index = -1;
my $element_to_find;

while($index<0){
say Dumper(\@user_list);
say "Please choose the field you want to search from the above values: ";
say "Enter the value field you want to perform operations on : ";
$element_to_find = <>;
chomp($element_to_find);
for my $i (0 .. $#user_list) {
    if ($user_list[$i] eq $element_to_find) {
        $index = $i;  
        last;
    }
}
}

say "Please refer rows.txt file for details about data";
say "Enter the pattern you want to match with on the selected field: ";

my $x = <>;
chomp($x);

sub field{
    my $self=shift @_;
    my $a = $self->{$element_to_find} =~ /^$x/i;
    if( $a ){
        return $self->{user_id} ." " . $self->{first_name} ." " . $self->{last_name} ." " . $self->{sex} ." " . $self->{email} ." " . $self->{salary} ." " . $self->{date_of_birth} ." " . $self->{job_title};
    }
    else{
        return "";
    }
};

}

elsif($method=="3"){

# employees joining between date (after and between)
say("Dates in our data are ranging from year 1940 to the present year.");
say("Please enter the date in 'YYYY-MM-DD' format");
say "Enter the starting date from which you want to match the data : ";
my $starting_date = <>;
chomp($starting_date);

say "Enter the ending date till which you want to match the data : ";
my $ending_date=<>;
chomp($ending_date);


sub date_range{
    my $self=shift @_;
    my $a=$self->{date_of_birth};

    my @emp_date = split('-', $a);
    my $employee_date =join "",(@emp_date);

    my @star = split('-', $starting_date);
    my @end = split('-', $ending_date);
    my $start_date =join "",(@star);
    my $end_date =join "",(@end);

    if($employee_date lt $end_date && $employee_date gt $start_date ){
        return $self->{user_id} ." " . $self->{first_name} ." " . $self->{last_name} ." " . $self->{sex} ." " . $self->{email} ." " . $self->{salary} ." " . $self->{date_of_birth} ." " . $self->{job_title};
    }
    else{
        return "";
    }
};
}











# sub DESTROY{
#     print "end";
# };

1;  # we should use this a truthy value