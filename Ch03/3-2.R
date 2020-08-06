#날짜
#이름 : 강래구
#내용 : excel  파일 데이터 프레임 엑셀

#패키지 설치
install.packages('readxl')

#패키지 로드
library(readxl)

df_exam <- read_excel('C:/Users/bigdata/Desktop/workspace/R/file/exam.xlsx')
View(df_exam)

#합
sum_math <- sum(df_exam$math)
sum_math

mean_math <- mean(df_exam$math)
mean_math
