
#reading dataset
p_libraries<-read.csv('Public_libraries.csv')

#exploring dataset
names(p_libraries)
head(p_libraries)
tail(p_libraries)
summary(p_libraries)
dim(p_libraries)

#explore dataset with barplot()

yes <- colSums(p_libraries == "Yes")
yes
no <-colSums(p_libraries=="No") 
no
Statuary_service_1_April_2010<-rbind(yes,no)
Statuary_service_1_April_2010
Statuary_service_1_April_2016<-rbind(yes,no)
Statuary_service_1_April_2016
barplot(Statuary_service_1_April_2010,legend=rownames(Statuary_service_1_April_2010))
barplot(Statuary_service_1_April_2010,beside = T,legend=rownames(Statuary_service_1_April_2010))

#installing packages & libraries
library(arules)


#apriori 

rules<-apriori(p_libraries)
summary(rules)
inspect(rules)
rules <- apriori(p_libraries, 
                 parameter =list(minlen=2,maxlen=3, conf = 0.95))
summary(rules)
inspect(rules)
summary(p_libraries)
barplot(Statuary_service_1_April_2010, beside=T,legend=rownames(Statuary_service_1_April_2010))
rules <- apriori(p_libraries, 
                 parameter = list(minlen=2, maxlen=3,conf = 0.95), 
                 appearance= list(rhs=c("Statuary_service_1_April_2010=Yes"),default="lhs"))
summary(rules)
inspect(rules)

rules <- apriori(p_libraries,
                 parameter = list(minlen=2, maxlen=3,conf = 0.95))

summary(rules)

#inspecting rules
inspect(rules)


library(arulesViz)
plot(rules)
plot(rules, method="grouped")
plot(rules@quality)
library(plotly)

#specifying parameters
rules3 <- apriori(p_libraries, 
                  parameter = list(minlen=2,maxlen=4, conf = 0.60))

#unsing plotly
plot_ly(p_libraries,x=Statuary_service_1_April_2010,y=no,type = "scatter",
        measure = c("support", "lift"), shading = "confidence",showlegend=TRUE)
inspect(rules3)
rules_ex <-apriori(p_libraries, 
                   parameter =list(minlen=2,maxlen=4,conf=0.75))
plot(rules_ex, method = "paracoord", control = list(reorder = TRUE))
oneRule <- sample(rules_ex, 1)
plot(rules_ex, method = "two-key", control = list(reorder = TRUE))
plot(rules_ex, method = "graph", control = list(reorder = TRUE))
