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
