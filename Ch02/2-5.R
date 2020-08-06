#날짜 : 20/08/03
#이름 : 강래구
#내용 : R 자료 구조 문자열 처리 p84

#패키지 설치
install.packages("stringr")

#R패키지 로드
library(stringr)

#정규표현식 []{}
str <- 'hong25이순신31정약용27'

r1 <- str_extract(str, "[1-9]{2}") #1부터 9까지 숫자에서 연속적인 숫자 2개를 추출
r1
r2 <- str_extract_all(str, "[1-9]{2}") #모두 추출해라
r2
r3 <- str_extract_all(str, "[a-z]{3}")
r3
r3 <- str_extract_all(str, "[가-힣]{3}")
r3
r4 <- str_extract_all(str, "[^0-9]{2}")  #^=not , 숫자를 제외한 문자열 2자리
r4


#문자열 길이
str_length(str)
str_sub(str, 1, 5)
str_replace(str, '이순신','leesoonshin')

#문자열 벡터
str_vec <- c('김유신','김춘추', '강감찬', '이순신')
str_vec

str_collapse <- paste(str_vec, collapse = ',')
str_collapse
