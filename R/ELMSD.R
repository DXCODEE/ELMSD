    
#' @name ELMSD
#' @title Compressed representation of extreme learning machine with self-diffusion  network denoising applied on cancer subtyping.
#' @description Cancer subtypes identifition by dimensioanl reduction and denoising.
#' @param x Gene expression matrix and rows are samples,columns are features. 
#' @param nhid Numbers of hidden nodes in extreme learning machine.
#' @param k  Clustering number 

#' @return a list;
#' (1)clu:the clustering result;
#' (2)S:the final diffusion matrix;
#' @export
#' @examples
#' data(Gene_expression)
#' test<-MOSD(Gene_expression,nhid,k)
    
ELMSD<-function(x,nhid,k){
  
  set.seed(11111)
  model <- elmtrain.default(x,x,data=x, nhid=nhid, actfun="sig")
  mpw<-model$inpweight
  mbas <-model$biashid
  # mow  <-model$outweight
  cot<-(x %*% t(mpw)+mbas)
  A<- affs(cot)
  sd<-self.diffusion(A,4)
  lab<- spec.clu(sd,k)
  results <- list()
  results[["clu"]] <- lab
  results[["S"]] <- sd
  return(results)
  
}
    
  
