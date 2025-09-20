library(lpSolve)

# Primal
obj_p <- c(6,8)
const_p <- matrix(c(1,2, 2,3), nrow=2, byrow=TRUE)
dir_p <- c("<=","<=")
rhs_p <- c(8,18)

res_p <- lp("max", obj_p, const_p, dir_p, rhs_p)
cat("Primal solution (x,y):", round(res_p$solution,4), "\nZ =", round(res_p$objval,4), "\n\n")

# Dual
# Dual: min W = 8*y1 + 18*y2
# subj a: 1*y1 + 2*y2 >= 6
#       2*y1 + 3*y2 >= 8
obj_d <- c(8,18)
const_d <- matrix(c(1,2, 2,3), nrow=2, byrow=TRUE)
dir_d <- c(">=",">=")
rhs_d <- c(6,8)

res_d <- lp("min", obj_d, const_d, dir_d, rhs_d)
cat("Dual solution (y1,y2):", round(res_d$solution,4), "\nW =", round(res_d$objval,4), "\n")
