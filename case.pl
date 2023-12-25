#!/usr/bin/perl 
# your code here 

use Switch;            # run this file in ubuntu

$var = 10; 
@arr = (10, 20, 30); 


switch($var) { 
case 10 { 
	print("$var matches this case\n"); 
} 
case "x" { 
	print("string type") 
} 
case [1..10,42] { 
	print("$var present in list\n"); 
} 
case (\@arr) { 
	print("$var present in array @arr"); 
} 
else { 
	print("None of the cases match"); 
} 
} 
