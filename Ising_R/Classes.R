#S4 class definition 
Lattice <- setClass(
		    "Lattice",
		    slot= c(
			    site = "numeric",
			    spin = "numeric"
			    ),
		    
		    prototype=list(
				   site =  c(0.0,0.0,0.0),
				   spin = 1
				   ),
		    validity=function(object)
		    {
			    if(object@spin != 1 && object@spin != -1){
				    return("Error, invalid spin value")
			    }
			    if(length(object@site) != 3){
				    return("Error, invalid dimensions number")
			    }
			    return(TRUE)

		    }
)


setGeneric(
	   name = "setSite",
	   def=function(latt,position)
	   {
		   standardGeneric("setSite")
	   }
)

setMethod(
	  f= "setSite",
	  signature = "Lattice",
	  definition=function(latt,position)
	  {
		  if(length(position) != 3){
			  return("Error, invalid dimensions number")
		  }
		  latt@site <- position
		  return(latt)
	  }
)

setGeneric(
	   name = "setSpin",
	   def=function(latt,position,spin)
	   {
		   standardGeneric("setSpin")
	   }
)

setMethod(
	  f= "setSpin",
	  signature = "Lattice",
	  definition=function(latt,position,spin)
	  {
		  if(spin != 1 && spin != -1){
			  return("Error, invalid spin value")
		  }
		  latt@site <- position
		  return(latt)
	  }
)

setGeneric(
	   name = "getSite",
	   def=function(latt)
	   {
		   standardGeneric("getSite")
	   }
)

setMethod(
	  f= "getSite",
	  signature = "Lattice",
	  definition=function(latt)
	  {
		  return(latt@site)
	  }
)







