# Generates plots of uniform distributions with certain parameters
# n is number of random numbers to generate
# bins is number of bars to divide numbers into
# a and b are the support (bounds) of the distribution
uniform <- function(n, bins, a, b){
  library(tidyverse)
  library(dslabs)
  dat <- data.frame(x = runif(n, min = a, max = b))
  dat %>% ggplot(aes(x)) + geom_histogram(bins = bins, color = 'black', fill = 'blue') + scale_x_continuous(breaks = seq(a, b, 1)) + labs(x = '', y = 'Frequency') + ds_theme_set()
}




