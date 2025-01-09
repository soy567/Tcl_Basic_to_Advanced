#!/usr/bin/tclsh
# Tcl Basics
puts "Hello World"; # puts is for printing in command line
puts "Hello World"; puts "Hello World without semicolon"

# Variable Declaration.
# set var_name [var_value]
# 기본적으로, 할당값에 제한은 없음. 메모리 한계까지 긴 문자열 가능 (Tcl 버전마다 다름)
# 모든 값은 문자열 형태로 저장
set str1 "this is str";
set num_val "1.5";
puts "$str1";
puts "the value is $num_val";