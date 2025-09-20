obj <- c(35, 50)
const <- matrix(c(1,2, 3,1), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(14, 18)

resultado <- lp("max", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

plot(0,0, type="n", xlim=c(0,10), ylim=c(0,10),
     xlab="Camisas (x)", ylab="Pantalones (y)",
     main="Ejercicio 5: Fábrica")

abline(a=14, b=-0.5, col="blue")   # x+2y=14
abline(a=18, b=-3, col="red")     # 3x+y=18

points(resultado$solution[1], resultado$solution[2], col="red", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="red")

