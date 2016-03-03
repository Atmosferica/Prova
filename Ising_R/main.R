library(methods)
source("Classes.R")

a <- new("Lattice", site=c(1,2,3), spin=1)
cat("Is S4 datatype?: ",isS4(a),"\n")
print(a)
a <- setSite(a,c(1,1,1))
print(a)





