
function index()
    local hJson := { => }, aRuta //, n

    local oDb
    LOCAL o

    //local aSript_Name   //, aRequest_Uri
    //local cResp

    aRuta := hb_ATokens( AP_GetEnv( "REQUEST_URI" ), "/", )

    // oDb := tConection( 'MYSQL', "localhost", "root", "", "sysgvs", 3306 )
    //? ap_echo( oDb:version() )
    // _w( oDb )
 /*
         ? "<b>==> Test Error de conexion...</b><br>"
         
         
         //o := WDO():Rdbms( 'MYSQL', "localhost", "harbour", "hb1234", "dbharbour", 3306 )
         o := WDO():Rdbms( 'MYSQL', "localhost", "root", "", "sysgvs1", 3306 )
   
         
         IF o:lConnect
         
            ? 'Connected !', '<b>Versión RDBMS MySql', o:Version()
            
         ELSE
         
            ? o:cError 
            
         ENDIF				
   
      _w( o )
 
   return  
*/
/*
    for each n in aJson
      if empty( aJson[ n ] )
         // ADel( aJson, n )
         ? "vacio", aJson[ n ]
      else
         ? "con dato", aJson[ n ]
      endif
    next
    for n:= 1 TO len( aJson )
      if empty( aJson[ n ] )
         ? "vacio", aJson[ n ]
         ADel( aJson, n )
      else
         ? "con dato", aJson[ n ]
      endif
    next
    ? empty( aJson )
    // aJson := AEval( aJson, { | value, n | iif( empty( value ), ADel(aJson, n), ) } )
    ? len( aJson )
*/
    /* 
    Cuando no se hace ninguna petición a la API
    */
    if empty( aRuta[ 2 ] )

        hJson[ "status" ] := 404
        hJson[ "result" ] := "Not found"

      /* Falta configurar la cabecera del navegador y del postman para que refleje el mismo status de la respuesta que aqui se emite
         Ref.: https://www.youtube.com/watch?v=pYDgl1NQZAY&list=PLEbpWR0TUWTYj-822YDewMS0188i2e4O2&index=7&t=327s Minuto 11

        AP_HeadersOutSet( "StatusCode", "404 Not Found" )

        cResp := BuildHttpResp( hJson[ "status" ], "application/json", hb_jsonEncode( hJson ) )
        ap_Echo( cResp )
        AEval( aJson, { | value, n | iif( empty( value),,hJson[ hb_ntos(n) ] := value ) })
    */
    
    else 
      /* 
      Cuando si se hace una petición a la API
      */
      if AP_Method() == "GET"
         #include "{% hb_getenv( 'PRGPATH' ) + '/routes/servicios/get.prg' %}"

      elseif AP_Method() == "POST"
         /* 
         Peticiones POST
         */
         hJson[ "status" ] := 200
         hJson[ "result" ] := "Solicitud POST"

      elseif AP_Method() == "PUT"
         /* 
         Peticiones PUT
         */
         hJson[ "status" ] := 200
         hJson[ "result" ] := "Solicitud PUT"

      elseif AP_Method() == "DELETE"
         /* 
         Peticiones DELETE
         */
         hJson[ "status" ] := 200
         hJson[ "result" ] := "Solicitud DELETE"
      
      endif

   endif

   mh_ExitStatus( hJson[ "status" ] )

   //ap_Echo( hb_jsonEncode( hJson ) )
   // ? AP_Method()



return nil

/*
FUNCTION BuildHttpResp( nStatusCode, cContentType, cBody)

   LOCAL cResponse := "HTTP/1.1 " + alltrim( Str(nStatusCode) ) + " " + GetHttpStatusText(nStatusCode) + Chr(13) + Chr(10)

   cResponse += "Content-Type: " + cContentType + Chr(13) + Chr(10)
   cResponse += Chr(13) + Chr(10)
   cResponse += cBody

   RETURN cResponse

FUNCTION GetHttpStatusText( nStatusCode )
   
   do case

      CASE nStatusCode = 200; RETURN "OK"
      CASE nStatusCode = 400; RETURN "Bad Request"
      CASE nStatusCode = 403; RETURN "Forbidden"
      CASE nStatusCode = 404; RETURN "Not Found"
      CASE nStatusCode = 500; RETURN "Internal Server Error"
      OTHERWISE;              RETURN "Unknown"
         
   ENDCASE

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
