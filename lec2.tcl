#!/usr/bin/tclsh
# Square Braces
# set a "5";
# set b $a; # this statement will assign b to a
set b [set a "5"]; # inside square braces, evaluate it, and, assign output of it to the variable b
puts "a is $a, b is $b";

# Curly Braces
# Braces can also be used for printing in command line
puts "str in double quotes"
puts {str in curly braces};
# curly braces doesn't recognize variables. it prints all the $variables as it is
set num_val 1.5;
puts {the value is $num_val};
puts "the value is $num_val";