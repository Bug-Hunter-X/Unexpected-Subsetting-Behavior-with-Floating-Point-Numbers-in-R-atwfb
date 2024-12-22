# R Floating-Point Comparison Bug

This repository demonstrates a common issue in R programming related to comparing floating-point numbers.  The use of the equality operator (`==`) with floating-point numbers can lead to unexpected results due to the nature of floating-point representation in computers.  This can cause problems when subsetting data frames or performing logical operations.

The `bug.R` file shows the problematic code, and `bugSolution.R` demonstrates how to solve this problem using the `near` function from the `base` package, which allows for comparison within a tolerance.

## Setup

Clone the repo and run `bug.R` and `bugSolution.R` in your R environment to see the issue and the solution in action. 

## Solution

Instead of direct equality comparison (`==`), use the `near` function. This function allows for comparison of floating-point numbers within a specified tolerance, thereby mitigating the issue caused by floating-point imprecision.  Adjust the `tol` argument in the `near` function to change this tolerance level.