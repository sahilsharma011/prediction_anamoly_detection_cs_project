library("markovchain")
library("foreach")
states<-c("Normal","Pressure","Happy","Sadness","Angry","Fear")
#Reads all csv file in storage and gets mood data from there
data<-foreach(elem=list.files("R",pattern = ".+(\\.csv)$"),.combine = 'c') %do% data.matrix(read.csv(paste('R\\',elem,sep=""),sep = ',',header = F))
xChar<-foreach(elem=data, .combine='c') %do% states[elem]
mcX<-markovchainFit(xChar)$estimate                       #creates markov chain from transition matrix
plot(mcX)                                                 #Plots the markov chain visually
myMood<-rmarkovchain(n = 365, object = mcX, t0 = states[1])       #Stimulates my mood for the next year
