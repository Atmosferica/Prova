# Hi, I'm just a stupid R script to learn git...

first <- c(1:10)
second <- c(11:20)

first <- cbind(first, second)

cat(paste(first, 'Hi, I should be a wonderful matrix!', '\n', sep=' '))

# End of the stupid R script...
# Are we sure it's really the end?
# Yes, that's all folks!

# Naif Scalar_prod
p_scal <- function(a,b)
{
	if(length(a)==length(b)){
		c=a*b
		return(sum(c))
	}else{
		write("Error, vector of different size", stdout())
	}
}

a <- c(1:10)
b <- c(1:10)
cat(p_scal(a,b),"\n")
cat(a %*% b,"\n")     # %*% = inner product
cat(crossprod(a,b),"\n") # better?
print(a)
print(b)
cat(a %*% t(b),"\n")

mm = matrix(1:9, nrow=3, ncol=3)
print(mm)





