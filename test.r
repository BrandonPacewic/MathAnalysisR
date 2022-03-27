x <- c(21, 23, 56, 90, 20, 7, 12)

png(file = "hist.png")

hist(x, main = "Test Histogram", 
    xlab = "Values", 
    col.lab = "darkgreen",
    col.main = "darkgreen")

dev.off()