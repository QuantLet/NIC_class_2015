# Clear memory
rm(list = ls())

# install.packages('signal')
library(signal)


# setwd('~/Tim_Radtke_NIC')

par(mfrow = c(1, 1), mar = c(5, 4, 4, 2), mgp = c(3, 1, 0))
set.seed(4)
n = 100
x = cumsum(rnorm(n))
z = fftfilt(rep(1, 10)/10, x)
plot(1:100, x, type = "l", main = "10-Point Moving Average on Random Walk", ylab = "value", xlab = "")
lines(1:100, z, col = "red")
