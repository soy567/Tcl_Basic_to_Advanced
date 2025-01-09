#!/usr/bin/tclsh

# Arithmetic Operations
# Syntax -> expr var1 operator var2

set a "5"; set b "3";
set sum [expr $a + $b];
set sub [expr $a  - $b];
set mul [expr $a * $b];
set div [expr $a / $b];
set mod [expr $a % $b];
puts "a=$a, b=$b" 
puts "sum is $sum, sub is $sub, mul is $mul, div is  $div, mod is $mod";

# 실수가 피연산자로 나오기 전까지 연산 결과는 정수.
# 실수가 피연산자로 나오는 순간 연산 결과는 실수로 계산됨
puts "[expr 10 + 5]";           # integer
puts "[expr 10.0 + 5]";         # float
puts "[expr 12/7 + 3.0]";         # integer/integer is integer
puts "[expr 12.0/7 + 3]";        # float

# Logical Operations
puts "[expr 1 && 76]";
puts "[expr 0 || 0]";
puts "[expr !5]";

# Bitwise Operations
set x 60; set y 13;
## x =    0011_1100
## y =    0000_1101
## ------------- 
## x&y =  0000_1100 => 12
## x|y =  0011_1101 => 61
## x^y =  0011_0001 => 49
## x<<2 = 1111_0000 => 240
## X>>2 = 0000_1111 => 15

puts "60&13 is [expr $x & $y]";
puts "60|13 is [expr $x | $y]";
puts "60^13 is [expr $x ^ $y]";
puts "60<<2 is [expr $x<<2]";
puts "60>>2 is [expr $x>>2]";

# Example
set a "[set x {VLSI Academy}]";
puts "$a and $x";