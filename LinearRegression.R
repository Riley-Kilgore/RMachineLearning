# Grab data from the R library and assign the median house value to y, our response vector.
Library(MASS)
y <- Boston$medv

# The next thing to do is to assign the data upon which the house value is dependent to a variable X.
X <- as.matrix(Boston[-ncol(Boston)])

# We also need to add a column to X for the intercept.
intercept <- rep(1, length(y))
X <- cbind(intercept, X)

