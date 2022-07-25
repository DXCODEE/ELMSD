# ELMSD
Compressed representation of extreme learning machine with self-diffusion  network denoising applied on cancer subtyping
## Installation

You can install EKMSD from GitHub directly using devtools.
- install.packages("devtools")
- devtools::install_github("DXCODEE/ELMSD")

## Example
  ```    
  We used processed colorectal cancer gene expression demonstrate the ELMSD 
	 data(data)
	 test<-MOSD(Gene_expression,1650,5)
 ```
## compare subtypes outcome

  ```
      library(survival)
      library(survminer)
	  library(ggplot2)
	 
	  clin <- Surv(time, event)
	  plot.KM(clin,as.integer(test$clu))

 ```