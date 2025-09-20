library(lpSolve)

obj <- c(40, 30)
const <- matrix(c(1,1, 1,0, 0,1), nrow=3, byrow=TRUE)
dir <- c(">=",">=",">=")
rhs <- c(8, 6, 5)

resultado <- lp("min", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

plot(0,0, type="n", xlim=c(0,10), ylim=c(0,10),
     xlab="Mesas (x)", ylab="Sillas (y)",
     main="Ejercicio 1 Minimización")

abline(a=8, b=-1, col="blue")   # x+y=8
abline(v=6, col="red")          # x=6
abline(h=5, col="green")        # y=5

points(resultado$solution[1], resultado$solution[2], col="purple", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="purple")

