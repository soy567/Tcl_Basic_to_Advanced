#!/usr/bin/tclsh

# Arrays and Loops
# Arrays are ordered set of values
# Syntax -> set ArrayName(Index) value
set institude(0) VLSI;
set institude(1) Academy;
set institude(2) Chip;

puts $institude(0);
puts $institude(1);
puts $institude(2);

# 한번에 리스트에 여러 값 할당
set list_1 {a1 a2 a3 a4 a5 a6};

# Iterating over arrays
puts "\nPrint list value using for loop";

for {set idx 0} {$idx < [array size institude]} {incr idx} {
    puts "institude($idx) : $institude($idx)";
}

# Associative Arrays -> index(key)와 value로 이루어진 자료구조, dictionary
# 순서없는 배열에서 key값 이용하여 원하는 value 접근가능
# index는 꼭 숫자일 필요 없으며, 드문드문 채워질 수 있음
puts "\nAssociative Arrays";

set Employee1(Name) "Jacob";
set Employee1(Age) 24;
puts $Employee1(Name);
puts $Employee1(Age);

# Array의 index들 출력
puts [array names Employee1];

# Array의 주요 Sub-command
# 기본 구문 -> array 서브커맨드 배열이름 인자
# set fruits {apple red banana yellow grape purple};
set fruits(apple) red;
set fruits(banans) yellow;
set fruits(grape) purple;

# exist -> 배열 존재 여부 확인
if {[array exist fruits]} {
    puts "fruits Array is exist!";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           y]
}
# size -> 배열의 요소 수 반환
puts [array size fruits];

# names -> 배열의 모든 키 반환
foreach key [array names fruits] {
    puts "$key: $fruits($key)";
}

# get -> 배열의 모든 키-값 쌍을 리스트로 반환
set fruit_list [array get fruits];
puts $fruit_list;

# set -> 리스트로부터 배열 생성 또는 업데이트
array set colors {
    red    #FF0000
    green  #00FF00
    blue   #0000FF
}

# unset -> 배열 요소 삭제
array unset fruits grape;   # grape키 삭제
array unset fruits;         # 모든 요소 삭제


# foreach loop 사용
# foreach는 Associative array와 사용하기 유용
puts "\nPrint Associative Arrays using foreach";

foreach idx [array names institude] {
    puts "institude"
}                                                                                                                                                                                                                              

# 다차원 배열
## Tcl은 컴퓨터 메모리 레벨에서 다차원 배열을 지원하지 않지만, 키 이름을 사용하여 다차원 배열처럼 유사하게 구현할 수 있음.
set matrix(1,1) 10;
set matrix(1,2) 20;
set matrix(2,1) 30;
set matrix(2,2) 40;

puts $matrix;

