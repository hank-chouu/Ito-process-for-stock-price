library(ggplot2)


volatility <- 0.3
mean <- 0.15
t <- 1/52


ito_process <- function(s){
  delta_s = mean*t*s + volatility*sqrt(t)*s*rnorm(1)
  new_s = s + delta_s
  return(new_s)
}


random_movements <- function(num_of_line){
  df <- data.frame(week = 1:52)
  for (j in 1:num_of_line){
    
    price <- c(100)
    for (i in 1:51){
      price <- c(price, ito_process(tail(price, 1)))
    }
    
    df[, ncol(df)+1] <- price
    colnames(df)[ncol(df)] <- paste0("price", j)
    
  }
  plot <- ggplot(df, aes(x=week))
  
  for (j in names(df)[-1]){
    plot <- plot+geom_line(data = df, aes_string(y=j), color = "blue", alpha = 0.3)
  }
  plot <- plot+labs(y='price', title = 'Monte Carlo simulation')
  return(plot)
}
