obj <- c(25, 15)
const <- matrix(c(3,2, 1,1, 0,1), nrow=3, byrow=TRUE)
dir <- c(">=",">=",">=")
rhs <- c(18, 7, 5)

resultado <- lp("min", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

plot(0,0, type="n", xlim=c(0,10), ylim=c(0,10),
     xlab="Pasteles (x)", ylab="Galletas (y)",
     main="Ejercicio 3 Minimización")

abline(a=9, b=-1.5, col="blue")   # 3x+2y=18
abline(a=7, b=-1, col="red")     # x+y=7
abline(h=5, col="green")         # y=5

points(resultado$solution[1], resultado$solution[2], col="purple", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="purple")

