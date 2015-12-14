#Description####
#HarvardX: PH525.2x Data Analysis for Life Sciences  2: Introduction to Linear Models and Matrix Algebra
#
#Attila Csala
#
#Introduction to Matrix Algebra
#
#recommended packaged
#install.packages("UsingR")

library(UsingR)
data("father.son",package="UsingR")

head(father.son)
mean(father.son$sheight)

#INTRODUCTION EXERCISES #2  ####

f.71 <- round(father.son$fheight)==71

mean(father.son$sheight[f.71])

#EXPLANATION

mean(father.son$sheight[round(father.son$fheight)==71])

#or using dplyr:
  
  library(dplyr)

filter(father.son,round(fheight)==71) %>% summarize(mean(sheight))


#MATRIX NOTATION EXERCISES #1####

X = matrix(1:1000,100,10)

X[25,3]

#MATRIX NOTATION EXERCISES #2#####
x=1:10
Y <- c()

for (i in 1:5){
  Y <- cbind(Y, i*x)
}
sum(Y[7,])



X <- matrix(c(1,3,2,1,-2,1,1,1,-1),3,3)
y <- matrix(c(6,2,1),3,1)
a <- solve(X)%*%y

X%*%a

#MATRIX OPERATION EXERCISES #2  ####
X <- t(matrix(c(3,4,-5,1,2,2,2,-1,1,-1,5,-5,5,0,0,1),4,4))
y <- matrix(c(10,5,7,4),4,1)

solve(X,y)

#EXPLANATION

#As we showed in the video we can do using:
  
  X = matrix(c(3,2,1,5,4,2,-1,0,-5,2,5,0,1,-1,-5,1),4,4)

y = c(10,5,7,4)

sol = solve(X,y)

#and c is the third entry:
  
  sol[ 3 ]

#MATRIX OPERATION EXERCISES #3  ####
a <- matrix(1:12, nrow=4)
b <- matrix(1:15, nrow=3)

pr <- a%*%b
pr[3,2]

sum(a[3,] * b[,2])
