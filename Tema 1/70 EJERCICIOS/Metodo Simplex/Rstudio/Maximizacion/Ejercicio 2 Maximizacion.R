obj <- c(7,4)
const <- matrix(c(1,2, 3,1), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(10,12)

res <- lp("max", obj, const, dir, rhs)
cat("Ejercicio 2 - Solución óptima: x =", round(res$solution[1],2), "y =", round(res$solution[2],2), "Z =", round(res$objval,2), "\n")
