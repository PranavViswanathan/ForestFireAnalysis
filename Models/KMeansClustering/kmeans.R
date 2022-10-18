library(readxl)
library(factoextra)
forestfires <- read_excel("C:/Users/Pranav Viswanathan/Downloads/forestfires.xls")
forestfires
df <-data.frame(forestfires$FFMC, forestfires$DMC, forestfires$ISI)
df <- na.omit(df)


png(file = "output.png")
km <- kmeans(df, centers = 4, nstart = 25)
str(km)
fviz_cluster(km, data = df)
dev.off()