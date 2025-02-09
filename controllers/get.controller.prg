
CLASS tGetController

    DATA cTabla
    
    METHOD New()		CONSTRUCTOR    		// Constructor
    METHOD getData()		CONSTRUCTOR    		// Constructor        

 ENDCLASS


 METHOD New() CLASS tGetController
  
	RETURN Self

/*----------------------------------------------*/
 
METHOD getData( cTabla ) CLASS tGetController

    local response

    response := tGetModel():New():getData( cTabla )
  
RETURN response

/*----------------------------------------------*/
