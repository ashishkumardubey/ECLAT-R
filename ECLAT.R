# Importing the datatset

dataset=read.csv('Market_Basket_Optimisation.csv')
str(dataset)

# Data Preprocessing
library(arules)

dataset=read.transactions('Market_Basket_Optimisation.csv',sep=',',rm.duplicates = T)

summary(dataset)
itemFrequencyPlot(dataset,topN= 10)


# Training the ECLAT Model

rules=eclat(data=dataset,parameter = list(support = 0.004,minlen =2))


# Visulaising the Results

inspect(sort(rules, by = 'support')[1:10])

