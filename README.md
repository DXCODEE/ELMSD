# ELMSD
Compressed representation of extreme learning machine with diffusion-based  graph denoising applied on cancer subtyping
## Installation

You can install ELMSD from GitHub directly using devtools.
- install.packages("devtools")
- dependency package:install_github("cran/elmNN")
- devtools::install_github("DXCODEE/ELMSD")

## Example
  ```    
  data(Gene_expression)
  test<-ELMSD(x=Gene_expression,hiden=500,k)
 ```
## Compare subtypes outcome

  ```
  library(survival)
  library(survminer)
  library(ggplot2)
  clin <- Surv(time, event)
  plot.KM(clin,as.integer(test$clu))

 ```
