
function index()
    local hJson := { => }, aRuta //, n

    aRuta := hb_ATokens( AP_GetEnv( "REQUEST_URI" ), "/", )

    if empty( aRuta[ 2 ] )                            /* <= Cuando no se hace ninguna petición a la API */

        hJson[ "status" ] := 404
        hJson[ "result" ] := "Not found"

    else                                              /* <= Cuando si se hace una petición a la API */

      if     AP_Method() == "GET"      /* Peticiones GET */;   get( aRuta[ 2 ], hJson )
      elseif AP_Method() == "POST"     /* Peticiones POST */;  post( aRuta[ 2 ], hJson )

         hJson[ "status" ] := 200
         hJson[ "result" ] := "Solicitud POST"

      elseif AP_Method() == "PUT";     /* Peticiones PUT */

         hJson[ "status" ] := 200
         hJson[ "result" ] := "Solicitud PUT"

      elseif AP_Method() == "DELETE";  /* Peticiones DELETE */

         hJson[ "status" ] := 200
         hJson[ "result" ] := "Solicitud DELETE"
      
      endif

   endif

   mh_ExitStatus( hJson[ "status" ] )

   ap_Echo( hb_jsonEncode( hJson ) )

return nil


*/


    /*
    _w( aScript_Name )
    _w( 'Hello var', 1234, date(), { 'var1' => 123 }, {}, NIL ) 
    _w( aJson )
    _w( hJson )
    _w( hb_jsonEncode( aJson ) )

    ? "mh_PathUrl()", " => ", mh_PathUrl()

    ? "hb_FNameDir( AP_GetEnv( 'SCRIPT_NAME' ) )",  ' => ', hb_FNameDir( AP_GetEnv( 'SCRIPT_NAME' ) )
    ? "hb_FNameDir( AP_GetEnv( 'REQUEST_URI' ) )",  ' => ', hb_FNameDir( AP_GetEnv( 'REQUEST_URI' ) )
    ? 'AP_GetEnv( "SCRIPT_NAME" )',  ' => ', AP_GetEnv( "SCRIPT_NAME" )
    ? 'AP_GetEnv( "REQUEST_URI" )',  ' => ', AP_GetEnv( "REQUEST_URI" )
    */    
