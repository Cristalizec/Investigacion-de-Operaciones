library(lpSolve)

# Primal (Min)
obj_p <- c(5,6)
A_p <- matrix(c(2,1, 0,1), nrow=2, byrow=TRUE) # (2x+y>=9) and (0x+1y>=4)
dir_p <- c(">=", ">=")
b_p <- c(9,4)

res_p <- lp("min", obj_p, A_p, dir_p, b_p)
cat("Primal (Min) — x,y:", round(res_p$solution,4), " Z =", round(res_p$objval,4), "\n\n")

# Dual (Max)
obj_d <- c(9,4)
A_d <- matrix(c(2,1, 1,1), nrow=2, byrow=TRUE)
dir_d <- c("<=", "<=")
b_d <- c(5,6)

res_d <- lp("max", obj_d, A_d, dir_d, b_d)
cat("Dual (Max) — u1,u2:", round(res_d$solution,4), " W =", round(res_d$objval,4), "\n")
