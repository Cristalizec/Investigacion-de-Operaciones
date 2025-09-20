library(lpSolve)

obj <- c(3,5)
const <- matrix(c(1,1, 2,1), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(6,8)

res <- lp("max", obj, const, dir, rhs)
cat("Ejercicio 1 - Solución óptima: x =", res$solution[1], "y =", res$solution[2], "Z =", res$objval, "\n")
