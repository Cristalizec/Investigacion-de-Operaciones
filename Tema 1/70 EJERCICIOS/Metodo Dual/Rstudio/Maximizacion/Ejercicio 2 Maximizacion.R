library(lpSolve)

# Primal
obj_p <- c(7,4)
const_p <- matrix(c(1,2, 3,1), nrow=2, byrow=TRUE)
dir_p <- c("<=","<=")
rhs_p <- c(10,12)

res_p <- lp("max", obj_p, const_p, dir_p, rhs_p)
cat("Primal solution (x,y):", round(res_p$solution,4), "\nZ =", round(res_p$objval,4), "\n\n")

# Dual
# Dual: min W = 10*y1 + 12*y2
# subj a:  y1 + 3*y2 >= 7
#        2*y1 + 1*y2 >= 4
obj_d <- c(10,12)
const_d <- matrix(c(1,3, 2,1), nrow=2, byrow=TRUE)
dir_d <- c(">=", ">=")
rhs_d <- c(7,4)

res_d <- lp("min", obj_d, const_d, dir_d, rhs_d)
cat("Dual solution (y1,y2):", round(res_d$solution,4), "\nW =", round(res_d$objval,4), "\n")

