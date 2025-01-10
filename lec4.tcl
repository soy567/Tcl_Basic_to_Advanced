#!/usr/bin/tclsh

# Loops in tcl
# Code Scope 지정시 시작 역할 하는 '{'는 반드시 분기문 시작하는 명령어와 같은 줄에 넣어주어야 함.
# break, continue를 이용하여 루프 제어 가능.

# 루프별 대략적인 용도
# for -> 정해진 횟수만큼 반복할 때 사용.
# foreach -> 리스트나 배열의 모든 요소를 처리할 때 사용.
# while -> 조건이 참인 동안 계속 반복해야 할 때 사용.

# Tip
# 성능이 중요한 경우, 가능하면 foreach를 사용. Tcl에서 foreach는 일반적으로 가장 빠른 루프 구조.
# 반복문은 Big O의 시간복잡도를 크게 높이는 항목. 다중 루프문 최소화
# 큰 리스트를 처리 할 때는 메모리 사용에 주의. 필요하다면 리스트를 청크로 나누어 처리
# 루프 내에서 리스트를 수정할 때는 주의가 필요. 특히 foreach루프에서 현재 처리 중인 리스트를 수정하면 예상치 못한 결과 발생 가능.

## if Condition
# Syntax -> if{expr1} expr1_exec elseif{expr2} expr2_exec ... else else_exec
puts "if~else";
set x 1;

if {$x == 2} {
    puts "x is 2"
} elseif {$x == 3} {
    puts "x is 3"
} else {puts "x is 1"};

## While loop
puts "\nWhile Loop";

set x 0;
while {$x < 6} {
    puts "x is $x";
    # set x [expr $x+1];
    incr x;
}

## for loop
# Syntax -> for {initialization} {condition} {increment} {
#   exec;
# }
# incr은 증가 decr은 감소시키는 명령어
puts "\nfor loop";

for {puts "Start"; set i 0} {$i < 2} {incr i} {
    puts "I inside first loop: $i";
}

## foreach loop
# 리스트의 각 요소에 대해 코드 블록을 반복 실행
# Syntax -> foreach 변수 리스트 {
#   실행문
# }
puts "\nforeach loop";

set fruit_list {apple banana orange};
foreach fruit $fruit_list {
    puts "I like $fruit";
}