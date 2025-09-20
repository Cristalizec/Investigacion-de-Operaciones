library(lpSolve)

obj <- c(3,5)
const <- matrix(c(1,1, 2,1), nrow=2, byrow=TRUE)
dir <- c(">=", ">=")
rhs <- c(6,8)

res <- lp("min", obj, const, dir, rhs)
cat("Ejercicio 1 (Min) - x =", round(res$solution[1],2), "y =", round(res$solution[2],2), "Z =", round(res$objval,2), "\n")
