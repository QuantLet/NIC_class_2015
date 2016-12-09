
[<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/banner.png" width="888" alt="Visit QuantNet">](http://quantlet.de/)

## [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **NIC_FFTAlgorithm** [<img src="https://github.com/QuantLet/Styleguide-and-FAQ/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/)

```yaml

Name of QuantLet : NIC_FFTAlgorithm

Published in : Numerical Introductory Course - Student Project on 'Fast Fourier Transform'

Description : 'Implementation of a naive Fast Fourier Transform achieving the arithmetic but cnot
the computational complexity of O(N log N).  The following is a Radix-2 Decimation-in-Time
Cooley-Tukey FFT. The supplied data has to have a number of observations that is a power of 2; that
means, log2(N) is an integer.'

Keywords : FFT, complexity, Cooley-Tukey, Radix-2 algorithm, frequency domain, transformation

See also : NIC_FFTMAFilter, NIC_FFTImageProcessing, NIC_FFTComp

Author : Tim Radtke

Submitted : 12.05.2016

```


### R Code:
```r
# Clear memory
rm(list = ls())

fft_dit = function(X, inverse = FALSE) {
    N = length(X)
    if (N <= 1) {
        return(X)
    } else {
        if (log2(N) != trunc(log2(N))) 
            stop("Number of obs is not a power of 2")
        even = fft_dit(X[seq(1, length(X), by = 2)], inverse = inverse)
        odd  = fft_dit(X[seq(2, length(X), by = 2)], inverse = inverse)
        k = 1:(N/2)
        if (inverse == FALSE) {
            twiddled = odd[k] * exp(-2 * pi * (0+1i) * (k - 1)/N)
        } else {
            twiddled = odd[k] * exp(2 * pi * (0+1i) * (k - 1)/N)
        }
        return(c(even[k] + twiddled[k], even[k] - twiddled[k]))
    }
}

```
