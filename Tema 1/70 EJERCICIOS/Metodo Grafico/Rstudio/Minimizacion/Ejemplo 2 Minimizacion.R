obj <- c(50, 20)
const <- matrix(c(2,1, 1,1), nrow=2, byrow=TRUE)
dir <- c(">=",">=")
rhs <- c(10, 6)

resultado <- lp("min", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

plot(0,0, type="n", xlim=c(0,10), ylim=c(0,10),
     xlab="Bolsos (x)", ylab="Mochilas (y)",
     main="Ejercicio 2 Minimización")

abline(a=10, b=-2, col="blue")   # 2x+y=10
abline(a=6, b=-1, col="red")    # x+y=6

points(resultado$solution[1], resultado$solution[2], col="purple", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="purple")

