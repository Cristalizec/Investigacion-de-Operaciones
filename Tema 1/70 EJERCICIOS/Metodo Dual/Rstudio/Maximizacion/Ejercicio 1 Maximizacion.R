library(lpSolve)

# Primal (Max)
obj_p <- c(3,5)
const_p <- matrix(c(1,1, 2,1), nrow=2, byrow=TRUE)
dir_p <- c("<=","<=")
rhs_p <- c(6,8)

res_p <- lp("max", obj_p, const_p, dir_p, rhs_p)
cat("Primal solution (x,y):", res_p$solution, "\nZ =", res_p$objval, "\n\n")

# Dual (Min)
# Dual is: min W = 6*y1 + 8*y2
# subj a:    1*y1 + 2*y2 >= 3
#            1*y1 + 1*y2 >= 5
obj_d <- c(6,8)
const_d <- matrix(c(1,2, 1,1), nrow=2, byrow=TRUE) # columns correspond to dual constraints
dir_d <- c(">=", ">=")
rhs_d <- c(3,5)

res_d <- lp("min", obj_d, const_d, dir_d, rhs_d)
cat("Dual solution (y1,y2):", res_d$solution, "\nW =", res_d$objval, "\n")

