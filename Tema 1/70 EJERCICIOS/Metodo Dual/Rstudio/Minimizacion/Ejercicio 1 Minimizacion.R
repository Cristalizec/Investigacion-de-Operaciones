library(lpSolve)

# Primal (Min)
obj_p <- c(3,5)
A_p <- matrix(c(1,1, 2,1), nrow=2, byrow=TRUE)
dir_p <- c(">=", ">=")
b_p <- c(6,8)

res_p <- lp("min", obj_p, A_p, dir_p, b_p)
cat("Primal (Min) — x,y:", round(res_p$solution,4), " Z =", round(res_p$objval,4), "\n\n")

# Dual (Max)
# Dual variables u1,u2 (maximize b^T u s.t. A^T u <= c)
obj_d <- c(6,8)
# Constraints for dual: (A^T) * u <= obj_p
A_d <- matrix(c(1,2, 1,1), nrow=2, byrow=TRUE)  # rows: constraints for u corresponding to x and y
dir_d <- c("<=", "<=")
b_d <- c(3,5)

res_d <- lp("max", obj_d, A_d, dir_d, b_d)
cat("Dual (Max) — u1,u2:", round(res_d$solution,4), " W =", round(res_d$objval,4), "\n")
