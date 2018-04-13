# Grab data from the R library and assign the median house value to y, our response vector.
Library(MASS)
y <- Boston$medv

# The next thing to do is to assign the data upon which the house value is dependent to a variable X.
X <- as.matrix(Boston[-ncol(Boston)])

# We also need to add a column to X for the intercept.
intercept <- rep(1, length(y))
X <- cbind(intercept, X)

# Here we are solving for the beta values and round them to two decimal points.
# Explanation: t(X) transposes the matrix X. %*% is matrix multiplication.
# Because y is a vector, the resulting product will also be a vector, this vector shows correlation between different inputs and the
# resultant values of 'y'.
betas <- solve(t(X) %*% X) %*% t(X) %*% y
betas <- round(betas, 2)