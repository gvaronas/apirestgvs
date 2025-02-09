
CLASS tRoutesController

    DATA hTree
    
    METHOD New()		CONSTRUCTOR    		// Constructor
    METHOD Index()    	// LLeva Datos a un Arreglo
/*
    METHOD ToJSON()    	// LLeva Datos a formato JSON
    METHOD TODbf_()    	// LLeva Datos a DBF
    METHOD Destroy()    // Libera Memoria
 */
 ENDCLASS


 METHOD New() CLASS tRoutesController

  
	RETURN Self

/*----------------------------------------------*/

METHOD Index() CLASS tRoutesController    	// LLeva Datos a un Arreglo

    index()     // Ejecuta function Index que está en routes.prg

	RETURN aData

 
 