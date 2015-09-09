library(readr)
library(dplyr)

train <- readr::read_csv('./train.csv')
test <- readr::read_csv('./test.csv')

library(rpart)
fit <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
             data=train, method="class")

library(rattle)
library(rpart.plot)
library(RColorBrewer)

fancyRpartPlot(fit)
