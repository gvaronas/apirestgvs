
function get( cReq, hJson )
    local oDb 
    local cSql, cStmt 
    local cTabla, cPara, nPos
    local oRs, a

    oDb := tConection():new()

//    oDb := WDO():Rdbms( "MYSQL", "localhost", "harbour", "hb1234", "sysgvs", 3306 )   //nPort, lLog, bError )

    if oDb:lConnect     //;    ? 'Connected !', '<b>Versión RDBMS MySql', oDb:Version()
            
        nPos := at( "?", cReq )
        cTabla := left( cReq, nPos - 1 )

        ? cSql := "SELECT * FROM " + cTabla

        IF !empty( hRes := oDb:Query( cSql ) )

            ? 'Count(): ', oDb:Count( hRes )
            ? 'Fields: ',  oDb:FCount( hRes )
            
            ? '<br><b>Fields</b>'
            for n := 1 to len( oDb:aFields )			
                ? oDb:aFields[n][1], oDb:aFields[n][2]
            next			
            
            ? '<br><b>Data</b>'
/*
            while ( !empty( a := oDb:Fetch( hRes ) ) )
            	? mh_valtochar( a )
            end
*/                        
            //	Associative array
            while ( !empty( a := oDb:Fetch_Assoc( hRes ) ) )
                ? mh_valtochar( a )
            end	
            oDb:Free_Result( hRes )

        ENDIF

    else;               ? o:cError; return nil    
    endif

    ? oDb:cDatabase

    _W( cReq )

    nPos := at( "?", cReq )
    ? cTabla := left( cReq, nPos - 1 )
    ? cPara  := substr( cReq, nPos + 1 )
    
    ? cSql := "SELECT * FROM " + cTabla

	_W( oDb:Query( cSql )	)
	//ODb:Prepare( hRow )

    
    ? "vino por aqui"

    /* 
    Peticiones GET
    */
    hJson[ "status" ] := 200
    hJson[ "result" ] := "Solicitud GET"

return nil 
