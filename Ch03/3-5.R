#날짜 : 20/08/04
#이름 : 강래구
#내용 : dplyr 패키지 연습문제

View(iris)

df.result <- iris %>% group_by(Species) %>% 
                      summarise(mean(Sepal.Length),
                                mean(Sepal.Width),
                                mean(Petal.Length),
                                mean(Petal.Width))
df.result
