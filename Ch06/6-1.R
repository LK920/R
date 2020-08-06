#날짜 : 20/08/05
#이름 : 강래구
#내용 : 데이터 베이스 연동

install.packages('RMySQL')

library(RMySQL) #mysql 사용 패키지
library(dplyr)  #그래프
library(ggplot2) #그래프
#데이터 베이스 접속
conn <- dbConnect(MySQL(),
                  host = '192.168.50.82',
                  user='krg',
                  password='1234',
                  dbname='krg'
                  )
df_sale2017 <- dbGetQuery(conn, statement = 'SELECT * FROM `SALE_2017`')
View(df_sale2017) 

df_sale2017 <- df_sale2017 %>% group_by(uid) %>% 
                              summarise(total = sum(sale)) %>% 
                              arrange(desc(total))
View(df_sale2017)

#그래프 출력
ggplot(data = df_sale2017, aes(x = uid ,y = total))+geom_

qplot(data=df_sale2017,
      x=uid,
      y = total,
      geom = 'col')
