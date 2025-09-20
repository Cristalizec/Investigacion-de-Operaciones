obj <- c(5,6)
const <- matrix(c(2,1, 0,1), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(9,4)

res <- lp("max", obj, const, dir, rhs)
cat("Ejercicio 3 - Solución óptima: x =", round(res$solution[1],2), "y =", round(res$solution[2],2), "Z =", round(res$objval,2), "\n")
