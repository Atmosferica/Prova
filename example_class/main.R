library(methods)
source("ClassePunto.R")

punti <- new("punto", x = -4:4, y = exp(-4:4) )
plot(slot(punti,"x"),slot(punti,"y"))
