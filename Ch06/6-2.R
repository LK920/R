#날짜 : 20/08/05
#이름 : 강래구
#내용 : mongodb 연동

install.packages('mongolite')
library(mongolite)
library(dplyr)

conn <- mongolite::mongo(url = 'mongodb://chhak:1234@192.168.50.82:27017/chhak',
                         db = 'chhak',
                         collection = 'movies',
                         verbose = TRUE,
                         options = ssl_options())

df_movies <- conn$find()
View(df_movies)


###특정 영화 리뷰 텍스트 시각화 해보기
library(multilinguer)
library(KoNLP)
library(dplyr)
library(stringr)
useNIADic()

#알라딘 리뷰 테이블 생성
df_al <- df_movies %>% filter(title == '알라딘')
df_reple <- df_al %>%  select(reple)
View(df_reple)

#특수문자 제거,
df_reple <- str_replace_all(df_reple, '\\W', ' ')

#단어 추출
data_noun <- extractNoun(df_reple)
View(data_noun)
