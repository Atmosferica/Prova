fatt<-function(n)
{
	if(n<=1){return(1)}
	return(n*fatt(n-1))
}
write(fatt(4),stdout())

fun_M <- function(x)
{
	return(2*x)
}

fun_M2 <- function(p)
{
	return(p*p)
}

fun_M2 <- function(p)
{
	return(p*p*p)
}

funzOBS <- function(x)
{
	return(x)
}


