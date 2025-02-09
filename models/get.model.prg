
CLASS tGetModel

    DATA oDb
    
    METHOD New()		CONSTRUCTOR    		// Constructor
    METHOD GetData()	

 ENDCLASS


 METHOD New( cReq ) CLASS tGetModel
    ::oDb := tConection():new()  

    if ::oDb:lConnect;  ? 'Connected !', '<b>Versión RDBMS MySql', ::oDb:Version()
    else;               ? o:cError
    endif

	RETURN Self

/*----------------------------------------------*/

METHOD getData( cTabla ) CLASS tGetModel

    local cSql, hRes, response := { => }

    cSql := "SELECT * FROM " + cTabla

    if ::oDb:lConnect     //;    ? 'Connected !', '<b>Versión RDBMS MySql', oDb:Version()

        IF !empty( hRes := ::oDb:Query( cSql ) )

            ? 'Count(): ', ::oDb:Count( hRes )
            ? 'Fields: ',  ::oDb:FCount( hRes )

            //	Associative array
            while ( !empty( a := ::oDb:Fetch_Assoc( hRes ) ) )
                ? mh_valtochar( a )
            end	
            ::oDb:Free_Result( hRes )

        endif

    else;               ? ::oDb:cError
    endif

RETURN hRes

 

