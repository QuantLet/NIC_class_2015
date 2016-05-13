# Clear memory
rm(list = ls(all = TRUE))

# Generate plot
x = 2 ^ (1:8)
plot(x, x ^ 2, type = "l", xlab = "N", ylab = "Order of Computations", col = "blue", lwd = 2.5, cex = 1.5)
legend(0, 60000, c("N^2", "N log2(N)"), col = c("blue", "red"), lty = c(1,1), lwd = c(2.5, 2.5))
text(160, 37000, labels = "DFT")
lines(x, x * log2(x), type = "l", col = "red", lwd = 2.5)
text(200, 5800, labels = "FFT")
