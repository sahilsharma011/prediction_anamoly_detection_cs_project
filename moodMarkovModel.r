library("markovchain")
xChar<-as.character(c(1,5,1,5,1,3,1,5,3,3,5,6,6,1,4,3,1,1,1,1,3,1,6,2,2,1,1,5,1,1,1,2,2,1,1,5,4,4,3,1,1,1,1,1,1,3,5,2,1,4,1,4,1,1,1,1,1,2,5,1,1,2,1,2,4,2,2,1,3,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,3,1,3,3,1,1,1,3,2,2,5,4,1,1,3,1,1,1,3,3,1,1,1,3,1,4,1,2,1,1,3,1,6,4,1,1,1,2,1,1,2,2,2,1,4,2,2,2,1,2,2,2,1,3,1,2,6,2,2,1,1,1,2,1,2,2,2,1,1))
mcX<-markovchainFit(xChar)$estimate                       #creates markov chain from transition matrix
plot(mcX)                                                 #Plots the markov chain visually
myMood<-rmarkovchain(n = 365, object = mcX, t0 = 1)       #Stimulates my mood for the next year
