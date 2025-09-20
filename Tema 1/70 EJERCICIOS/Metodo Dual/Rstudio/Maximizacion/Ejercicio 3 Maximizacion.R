library(lpSolve)

# Primal
obj_p <- c(5,6)
const_p <- matrix(c(2,1, 0,1), nrow=2, byrow=TRUE)  # second constraint: 0*x + 1*y <= 4
dir_p <- c("<=","<=")
rhs_p <- c(9,4)

res_p <- lp("max", obj_p, const_p, dir_p, rhs_p)
cat("Primal solution (x,y):", round(res_p$solution,4), "\nZ =", round(res_p$objval,4), "\n\n")

# Dual
# Dual: min W = 9*y1 + 4*y2
# subj a: 2*y1       >= 5
#       1*y1 + 1*y2 >= 6
obj_d <- c(9,4)
const_d <- matrix(c(2,1, 0,1), nrow=2, byrow=TRUE) # careful: columns correspond to primal vars
# We need constraints (for dual): [2, 1]' * y >= 5 and [1,1]' * y >=6
# So build accordingly:
const_d <- matrix(c(2,1, 1,1), nrow=2, byrow=TRUE)
dir_d <- c(">=",">=")
rhs_d <- c(5,6)

res_d <- lp("min", obj_d, const_d, dir_d, rhs_d)
cat("Dual solution (y1,y2):", round(res_d$solution,4), "\nW =", round(res_d$objval,4), "\n")

