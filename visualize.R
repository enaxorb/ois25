data(mtcars)
mtcars$cyl = factor(mtcars$cyl)
colors = c("red", "blue", "green")
names(colors) = levels(mtcars$cyl)

plot(mtcars$wt, mtcars$mpg,
     type = "n",
     xlab = "Poids (1000 lbs)",
     ylab = "Miles per gallon (MPG)",
     main = "MPG vs Poids par cylindre")
for (c in levels(mtcars$cyl)) {
  data_sub = subset(mtcars, cyl == c)
  points(data_sub$wt, data_sub$mpg, col = colors[c], pch = 19)
  abline(lm(mpg ~ wt, data = data_sub), col = colors[c], lwd = 2)
}
legend("topright", legend = levels(mtcars$cyl),
       col = colors, pch = 19, title = "Cylindres")
