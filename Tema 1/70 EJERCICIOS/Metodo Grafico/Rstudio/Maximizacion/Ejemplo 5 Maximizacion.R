obj <- c(60, 40)
const <- matrix(c(2,1, 1,3), nrow=2, byrow=TRUE)
dir <- c("<=","<=")
rhs <- c(12, 15)

resultado <- lp("max", obj, const, dir, rhs)
print(resultado$solution)
print(resultado$objval)

plot(0,0, type="n", xlim=c(0,10), ylim=c(0,10),
     xlab="Trigo (x)", ylab="Maíz (y)",
     main="Ejercicio 4: Agricultura")

abline(a=12, b=-2, col="blue")   # 2x+y=12
abline(a=15, b=-1/3, col="red") # x+3y=15

points(resultado$solution[1], resultado$solution[2], col="red", pch=19, cex=1.5)
text(resultado$solution[1], resultado$solution[2]+0.5, labels="Óptimo", col="red")

