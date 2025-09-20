library(lpSolve)

# Función objetivo
obj <- c(40, 30)

# Restricciones
const <- matrix(c(1,1, 1,0, 0,1), nrow=3, byrow=TRUE)
dir <- c("<=","<=","<=")
rhs <- c(8, 6, 5)

# Resolver
resultado <- lp("max", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

# Graficar
plot(0,0, type="n", xlim=c(0,8), ylim=c(0,8),
     xlab="Mesas (x)", ylab="Sillas (y)",
     main="Ejercicio 1: Mesas y Sillas")

abline(a=8, b=-1, col="blue")   # x+y=8
abline(v=6, col="red")          # x=6
abline(h=5, col="green")        # y=5

# Área factible (aproximada)
polygon(c(0,0,3,6,6,0), c(0,5,5,2,0,0), col=rgb(0,0,1,0.2), border=NA)

# Punto óptimo
points(resultado$solution[1], resultado$solution[2], col="red", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="red")

