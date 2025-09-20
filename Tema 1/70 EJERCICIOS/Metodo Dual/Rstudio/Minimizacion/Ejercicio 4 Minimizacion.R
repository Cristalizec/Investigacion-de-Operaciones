library(lpSolve)

# Primal (Min)
obj_p <- c(4,3)
A_p <- matrix(c(1,3, 2,1), nrow=2, byrow=TRUE)
dir_p <- c(">=", ">=")
b_p <- c(9,8)

res_p <- lp("min", obj_p, A_p, dir_p, b_p)
cat("Primal (Min) — x,y:", round(res_p$solution,4), " Z =", round(res_p$objval,4), "\n\n")

# Dual (Max)
obj_d <- c(9,8)
A_d <- matrix(c(1,2, 3,1), nrow=2, byrow=TRUE)
dir_d <- c("<=", "<=")
b_d <- c(4,3)

res_d <- lp("max", obj_d, A_d, dir_d, b_d)
cat("Dual (Max) — u1,u2:", round(res_d$solution,4), " W =", round(res_d$objval,4), "\n")
