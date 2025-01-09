#!/usr/bin/tclsh
# Square Bracket
# set a "5";
# set b $a; # this statement will assign b to a
set b [set a "5"]; # inside square bracket, evaluate it, and, assign output of it to the variable b
puts "a is $a, b is $b";

# Curly Braces
# Braces can also be used for printing in command line
puts "str in double quotes"
puts {str in curly braces};
# curly braces doesn't recognize variables. it prints all the $variables as it is
set num_val 1.5;
puts {the value is $num_val};
puts "the value is $num_val";

# 줄바꿈 없이 출력
# -nonewline 옵션 사용
puts -nonewline "Your Name is: ";
puts "soy567";

# 출력 형식 지정하기
puts [format "Pi: %.2f" 3.14159];

# 에러 메시지: stderr 채널 사용
puts stderr "Error: Error example!";