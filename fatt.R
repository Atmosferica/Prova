# Modifichei2
# Questo codice fa schifo, va rifatto da capo!!
# Modifica tsh di prova

source('some_stuff.R')

fatt<-function(n)
{
	if(n<=1){return(1)}
	# Ritorno il cazzo 
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
	#ciao ciao ciao Mandelli
	#commento di OBS
	return(p*p*p)
}

funzOBS <- function(x)
{
	return(x)
}


funzprova <- function(x)
{
# commento tsh 
# cazzi volanti in 4D e non funzionera` mai 
	#commento Mandelli
	return(x)
}

#PROVAAAAAAAAAAAAAAAA

area <- function (width, height, string){
	if(string=='Rectangle'){
		area <- width * height
	}
	
	if(string=='Triangle'){
		area <- (width*height)/2
	}
	
	if(string!='Rectangle' & string!='Triangle') cat(paste('Pirla, scegli rettangolo o triangolo!', '\n', sep=''))

	return(area)
}
