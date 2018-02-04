library("markovchain")
library("foreach")
states<-c("Normal","Pressure","Happy","Sadness","Angry","Fear")
#Reads all csv file in storage and gets mood data from there
data<-foreach(elem=list.files("R",pattern = ".+(\\.csv)$"),.combine = 'c') %do% data.matrix(read.csv(paste('R\\',elem,sep=""),sep = ',',header = F))

xChar<-foreach(elem=data, .combine='c') %do% states[elem]     #Converts (1,2,3,..) from csv to their respective moods
mcX<-markovchainFit(xChar)$estimate                           #creates markov chain from transition matrix
plot(mcX)                                                     #Plots the markov chain visually
#Function to return probabilty of random sequences
seq2prob<-function (){
  i=1
  probSeq=1
  estimate=rmarkovchain(n = 5, object = mcX, t0 = states[sample(1:6,1)])  #Generates a sequence according to the markov model
  for (variable in estimate) {
    if(length(estimate)>i){
      probSeq=probSeq*mcX[variable,estimate[i+1]]
    }
    i=i+1
  }
  return(probSeq)
}
totalIter=100000
seqProbs=c(totalIter)
#Stores probabilities of {totalIter} sequences
for (variable in 1:totalIter) {
  seqProbs[variable]<-seq2prob()
}
plot(density(seqProbs))
