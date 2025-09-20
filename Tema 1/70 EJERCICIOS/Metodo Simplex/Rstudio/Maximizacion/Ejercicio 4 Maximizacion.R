obj <- c(4,3)
const <- matrix(c(1,3, 2,1), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(9,8)

res <- lp("max", obj, const, dir, rhs)
cat("Ejercicio 4 - Solución óptima: x =", round(res$solution[1],2), "y =", round(res$solution[2],2), "Z =", round(res$objval,2), "\n")
