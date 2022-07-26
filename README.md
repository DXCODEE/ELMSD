# ELMSD
Compressed representation of extreme learning machine with diffusion-based  graph denoising applied on cancer subtyping
## Installation

You can install ELMSD from GitHub directly using devtools.
- install dependency package:elmNN
- install.packages("devtools")
- devtools::install_github("DXCODEE/ELMSD")

## Example
  ```    
  We used preprocessed colorectal cancer gene expression to demonstrate the ELMSD 
  data(ov)
  test<-ELMSD(x=otcga,hiden=1650,k=6)
 ```
## Compare subtypes outcome

  ```
  library(survival)
  library(survminer)
  library(ggplot2)
  clin <- Surv(time, event)
  plot.KM(clin,as.integer(test$clu))

 ```
