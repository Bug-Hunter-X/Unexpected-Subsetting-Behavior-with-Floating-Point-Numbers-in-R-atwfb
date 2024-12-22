```r
# This code attempts to subset a data frame based on a condition,
# but it produces unexpected results due to the use of `==` with floating-point numbers.

data <- data.frame(x = c(1.1, 1.2, 1.3), y = c(2.1, 2.2, 2.3))

# Incorrect subsetting using `==`
subset_incorrect <- subset(data, x == 1.2)
print(subset_incorrect)

# Correct subsetting using `near` function
subset_correct <- subset(data, near(x, 1.2, tol = 0.001))
print(subset_correct)
```