
#classification rule



diabetes<-read.csv('diabetes.csv',header=TRUE)
names(diabetes)
head(diabetes)
tail(diabetes)
str(diabetes)
summary(diabetes)
nrow(diabetes)
ncol(diabetes)
dim(diabetes)
sum(is.na(diabetes))
#visualisations

plot(diabetes)
hist(diabetes$bmi)
hist(diabetes$bloodpressure,col = rainbow(8))
hist(diabetes$insulin,col = rainbow(8))
hist(diabetes$age,col = rainbow(9))
boxplot(diabetes$age, data=diabetes,col = rainbow(6))

#decision tree model

diabetes$diabetespedigreefunction <- as.factor(diabetes$bmi)
str(diabetes)
pd <- sample(2, nrow(diabetes),replace=TRUE, 
             prob=c(0.8,0.2))
pd
train <- diabetes[pd==1,]
validate<- diabetes[pd==2,]
dim(train)
dim(validate)
library(party)

#Decision tree model

diabetes_tree <- ctree(diabetespedigreefunction ~ bmi+insulin+bloodpressure+glucose ,data = train) 
diabetes_tree
print(diabetes_tree)
plot(diabetes_tree)
plot(diabetes_tree, type="simple")
predict(diabetes_tree)
tab <- table(predict(diabetes_tree), train$diabetespedigreefunction) 
print(tab)
sum(diag(tab))/sum(tab)
1-sum(diag(tab))/sum(tab)
test_predict <- table(predict(diabetes_tree, newdata= validate), validate$diabetespedigreefunction)
print(test_predict)
sum(diag(test_predict))/sum(test_predict)
1-sum(diag(tab))/sum(tab)


#ROC curve
install.packages("ROCR")
library(ROCR)
data(ROCR.simple)
df <- data.frame(ROCR.simple)
pred <- prediction(df$predictions, df$labels)
perf <- performance(pred,"tpr","fpr")
plot(perf,colorize=TRUE)
auc=performance(pred, measure = "auc")
print(auc@y.values)
max_ind = which.max(slot(perf, "y.values")[[1]] )


#accuracy and cutoff
acc = slot(perf, "y.values")[[1]][max_ind]
cutoff = slot(perf, "x.values")[[1]][max_ind]
print(c(accuracy= acc, cutoff = cutoff))
perf = performance(pred, "acc")
plot(perf)


