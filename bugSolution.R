```r
# This code demonstrates the correct way to subset a data frame based on a condition
# involving floating-point numbers, using the `near` function.

data <- data.frame(x = c(1.1, 1.2, 1.3), y = c(2.1, 2.2, 2.3))

# Correct subsetting using `near` function
subset_correct <- subset(data, near(x, 1.2, tol = 0.001))
print(subset_correct)
```