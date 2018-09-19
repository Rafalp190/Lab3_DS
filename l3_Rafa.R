install.packages(c("keras", "tensorflow"))

library(keras)
library(tensorflow)

data <- read.csv("data/train.csv")


set.seed(123)

split <- 70/100

part <-  sample(1:nrow(data),split*nrow(data))
train <- data[part,]
test <-  data[-part,]


# Convolutional Neural netowrk model
## Data normalization and categorical scaling

train  <- as.matrix(train)
test <- as.matrix(test)

train <- normalize(train[,2:785])
test <- normalize(test[,2:785])

