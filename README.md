# prediction_anamoly_detection_cs_project
Using Markov Chains  
  
![Mood Plot](https://i.imgur.com/VLd9t4P.png)
  
 A  6 - dimensional discrete Markov Chain defined by the following states:  
 Angry, Fear, Happy, Normal, Pressure, Sadness  
 The transition matrix  (by rows)  is defined as follows:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Angry&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fear&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Happy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Normal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pressure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sadness  
Angry    0.00000000 0.11111111 0.1111111 0.4444444 0.11111111 0.22222222  
Fear     0.00000000 0.20000000 0.0000000 0.2000000 0.40000000 0.20000000  
Happy    0.11111111 0.00000000 0.1666667 0.6666667 0.05555556 0.00000000  
Normal   0.06289308 0.02515723 0.1509434 0.5471698 0.15094340 0.06289308  
Pressure 0.06060606 0.03030303 0.0000000 0.4242424 0.45454545 0.03030303  
Sadness  0.00000000 0.00000000 0.2000000 0.5000000 0.20000000 0.10000000  

Refer   
https://cran.r-project.org/web/packages/markovchain/vignettes/an_introduction_to_markovchain_package.pdf  
https://cran.r-project.org/web/packages/markovchain/vignettes/markovchainCrashIntro.pdf  
