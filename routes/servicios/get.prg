
function get( cReq, hJson )
    local nPos, cTabla

    nPos := at( "?", cReq )
    cTabla := left( cReq, nPos - 1 )

    response := tGetController():New():getData( cTabla )

    _w( response )
    
    ? "vino por aqui"

    /* 
    Peticiones GET
    */
    hJson[ "status" ] := 200
    hJson[ "result" ] := "Solicitud GET"

return nil 
