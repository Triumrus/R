‘doParallel’
parallel


  print("Параллельное выполнение")
  cl <- makeCluster(getOption("cl.cores", 6)) # создание кластера из четырёх ядер процессора
  clusterExport(cl,"infert") # передача данных внутрь кластера
  clusterEvalQ(cl,library(RRF)) # загрузка пакета neuralnet в кластере
  parSapply(cl, 1:20, function(X){ # параллельная версия sapply
    set.seed(777)    
    RRF(mpg~disp,mtcars)}
  )
  stopCluster(cl)

  sapply()
  sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)
  sapply(mtcars,function(x){x*2})
  detectCores()
  
  
   library(doParallel)
   cl <- makeCluster(2)
   registerDoParallel(cl)
   Sys.time()
      z<- foreach(i=1:32) %dopar% predict(object = lm1,newdata = mt[i,])
      Sys.time()
   
   lm1<- lm(mpg~disp+hp,mtcars)
mtcars
lm1
predict(object = lm1,newdata = mtcars[,3:4])
mt<- mtcars[,3:4]
mt1 <- mt[1:10,]
mt2 <- mt[11:20,]
mt3 <- mt[21:32,]
predict.lm(object = lm1,newdata = mtcars[,3:4])
Sys.time()
system.time(expr, gcFirst = TRUE)

a<- RRF(mpg~disp,mtcars)
cforest(a)
??cforest
library(tree)
 tr <- tree(Species ~ ., data=iris)
 tr
 plot(tr)
node), split, n, deviance, yval, (yprob)
* denotes terminal node
getTree(tr)
reprtree:::plot.getTree(tr)
plot

plot(tr, uniform=TRUE, 
     main="Classification Tree for Kyphosis")
text(tr, use.n=TRUE, all=TRUE, cex=.8)
save(tr,"tr.txt")



((2+2)*12*5)
 
