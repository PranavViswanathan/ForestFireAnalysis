library(party)
library(randomForest)
forestfires <- read_excel("C:/Users/Pranav Viswanathan/Downloads/forestfires.xls")

output.forest <- randomForest(FFMC ~ forestfires$DMC + forestfires$DC + forestfires$ISI, 
                              data = forestfires)

print(output.forest)
print(importance(output.forest,type = 2))