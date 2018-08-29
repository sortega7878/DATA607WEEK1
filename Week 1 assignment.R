library(RCurl) 
x <- getURL("https://raw.githubusercontent.com/sortega7878/DATA607WEEK1/master/agaricus-lepiota.data") 
df <- read.csv(text = x)

head(df)
dim(df)
names(df)
dfnew <- subset(df,select = c(V2,V3,V4,V1))
colnames(dfnew)[1] <- "shape"
colnames(dfnew)[2] <- "surface"
colnames(dfnew)[3] <- "color"
colnames(dfnew)[4] <- "classes"
summary(dfnew)
head (dfnew)
dfnew$classes <- as.character(dfnew$classes)
dfnew$classes[dfnew$classes=="e"]<- "edible"
dfnew$classes[dfnew$classes=="p"]<- "poisonous"
dfnew$classes <- as.factor(dfnew$classes)

dfnew$shape <- as.character(dfnew$shape)
dfnew$shape[dfnew$shape=="b"]<- "bell"
dfnew$shape[dfnew$shape=="c"]<- "conical"
dfnew$shape[dfnew$shape=="f"]<- "flat"
dfnew$shape[dfnew$shape=="k"]<- "knobbed"
dfnew$shape[dfnew$shape=="s"]<- "sunken"
dfnew$shape[dfnew$shape=="x"]<- "convex"
dfnew$shape <- as.factor(dfnew$shape)

dfnew$surface <- as.character(dfnew$surface)
dfnew$surface[dfnew$surface=="f"]<- "fibrous"
dfnew$surface[dfnew$surface=="g"]<- "grooves"
dfnew$surface[dfnew$surface=="s"]<- "smooth"
dfnew$surface[dfnew$surface=="y"]<- "scaly"
dfnew$surface <- as.factor(dfnew$surface)

dfnew$color <- as.character(dfnew$color)
dfnew$color[dfnew$color=="n"]<- "brown"
dfnew$color[dfnew$color=="g"]<- "gray"
dfnew$color[dfnew$color=="e"]<- "red"
dfnew$color[dfnew$color=="y"]<- "yellow"
dfnew$color[dfnew$color=="w"]<- "white"
dfnew$color[dfnew$color=="b"]<- "buff"
dfnew$color <- as.factor(dfnew$color)
summary(dfnew)
