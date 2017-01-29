library(xgboost)
library(Ecdat)
data(Icecream)
train.data <- data.matrix(Icecream[,-1])

bst <- xgboost(data = train.data, label = Icecream$cons, max.depth = 3, eta = 1, nthread = 2, nround = 2, objective = "reg:linear")


features <- names(Icecream[,-1])

xgb.fi(model = bst, features = features)

# featureVector <- c() 
# for (i in 1:length(featureList)) { 
#   featureVector[i] <- paste(i-1, featureList[i], "q", sep="\t") 
# }
# write.table(featureVector, "fmap.txt", row.names=FALSE, quote = FALSE, col.names = FALSE)
# 
# xgb.dump(model = bst, fname = 'xgb.dump', fmap = "fmap.txt", with_stats = TRUE)
# featuresimp <- read.xlsx("C:/Users/Simran/Desktop/XgbFeatureInteractions.xlsx", sheet = 2)
#                            