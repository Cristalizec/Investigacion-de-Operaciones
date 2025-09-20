obj <- c(6,8)
const <- matrix(c(1,2, 2,3), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(8,18)

res <- lp("max", obj, const, dir, rhs)
cat("Ejercicio 5 - Solución óptima: x =", round(res$solution[1],2), "y =", round(res$solution[2],2), "Z =", round(res$objval,2), "\n")
