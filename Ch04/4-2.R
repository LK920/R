#날짜 : 20/08/03
#이름 : 강래구
#내용 : 제어문과 함수 교재 p122

#함수 정의
plus <- function(a,b){
  c <- a+b
  return(c)
}

minus <- function(a,b){
  return(a-b)
}

#함수 호출
r1 <- plus(1,2)
r2 <- plus(2,3)
r3 <- minus(1,2)
r4 <- minus(2,3)

r1
r2
r3
r4


#내장함수(절대값, 제곱근, 올림, 버림, 반올림, 팩토리얼)
abs(-5)
sqrt(9)
ceiling(2.1)
floor(2.9)
floor(2.1)
round(2.1)
round(2.8)
factorial(5)

#통계함수(최소 최대 범위 합 평균 중간값)
v1 <- c(1,2,3,4,5)
v2 <- c(1:10)
v1
v2

min(v1)
max(v2)
range(v2)
sum(v2)
mean(v2)
median(v1)









