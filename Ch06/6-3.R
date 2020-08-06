#날짜 : 20/08/05
#이름 : 강래구
#내용 : hadoop 연동

install.packages("devtools")
devtools::install_github("saurfang/rwebhdfs")
library(rwebhdfs)

hdfs <- webhdfs('192.168.100.101', 50070, 'root')


#에러남
df_sale2017 <- read_file(hdfs, '/sample/sales2017.csv')
