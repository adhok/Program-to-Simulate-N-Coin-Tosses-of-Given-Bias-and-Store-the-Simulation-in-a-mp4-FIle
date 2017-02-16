flips_simulation <- function(n,pHeads,seed,name_of_file){
  
  if (!require("ggplot2")) install.packages("ggplot2")
  if(!require("devtools"))install.packages("devtools")
  if(!require("gganimate"))install_github("dgrtwo/gganimate")
  
  set.seed(seed)
  flipSequence = sample(x=c(0,1),prob=c(1-pHeads,pHeads),size=n,replace=T)
  r=cumsum(flipSequence)
  runProp = r/(1:n)
  data_flip <- data.frame(index=1:length(runProp),runProp)
  
  g <- ggplot(data_flip,aes(x=index,y=runProp,frame=index))  +geom_path(aes(cumulative=T))+xlim(1,500)+ylim(0.0,1.0)+geom_hline(yintercept =          pHeads)+ggtitle(paste("Running Proportion Heads of Coin of Bias"),pHeads)+ylab("Proportion of Heads")+xlab("Flip Number")
  gganimate(g,paste(name_of_file,".mp4",sep=""),title_frame = F,interval=0.1)
  
}