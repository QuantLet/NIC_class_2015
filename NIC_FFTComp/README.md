
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **NIC_FFTComp** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of QuantLet : NIC_FFTComp

Published in : Numerical Introductory Course - Student Presentation on 'Fast Fourier Transform'

Description : 'Plots the order of computations of the Discrete Fourier Transform (DFT) and the Fast
Fourier Transform (FFT) as a function of the sample size.'

Keywords : DFT, FFT, run time, complexity, comparison, numerical methods

See also : NIC_FFTAlgorithm, NIC_FFTImageProcessing, NIC_FFTMAFilter

Author : Tim Radke

Submitted : 06.05.2016

Example : Plot of order of computations of DFT and FFT.

```

![Picture1](NIC_FFTComp.png)


### R Code:
```r
# Clear memory
rm(list = ls(all = TRUE))

# Generate plot
x = 2 ^ (1:8)
plot(x, x ^ 2, type = "l", xlab = "N", ylab = "Order of Computations", col = "blue", lwd = 2.5, cex = 1.5)
legend(0, 60000, c("N^2", "N log2(N)"), col = c("blue", "red"), lty = c(1,1), lwd = c(2.5, 2.5))
text(160, 37000, labels = "DFT")
lines(x, x * log2(x), type = "l", col = "red", lwd = 2.5)
text(200, 5800, labels = "FFT")

```
