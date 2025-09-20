obj <- c(50, 20)
const <- matrix(c(2,1, 1,1), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(10, 6)

resultado <- lp("max", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

plot(0,0, type="n", xlim=c(0,6), ylim=c(0,6),
     xlab="Bolsos (x)", ylab="Mochilas (y)",
     main="Ejercicio 2: Bolsos y Mochilas")

abline(a=10, b=-2, col="blue")   # 2x+y=10
abline(a=6, b=-1, col="red")    # x+y=6

polygon(c(0,0,2,4,0), c(0,6,4,2,0), col=rgb(0,0,1,0.2), border=NA)

points(resultado$solution[1], resultado$solution[2], col="red", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="red")

