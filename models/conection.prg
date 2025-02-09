//	--------------------------------------------------------------
//	Title......: WDO Web Database Objects
//	Description: Test WDO
//	Date.......: 28/07/2019
//
//	--------------------------------------------------------------

CLASS tConection

    DATA oWDO                           // Objeto WDO (Incluye hInfoDB y conección a la BD )
    DATA hInfoDB //INIT { => }

    METHOD New() CONSTRUCTOR            // Constructor, llena con Información de la BD
    // METHOD InfoDatabase()               // Información de la BD
    // METHOD conection()                  // Conecta la BD

 ENDCLASS

 METHOD New( cRdbms, cServer, cUsername, cPassword, cDatabase, nPort, lLog, bError ) CLASS tConection
/*
//  ::oWDO := WDO():Rdbms( cRdbms, cServer, cUsername, cPassword, cDatabase, nPort, lLog, bError )
    ::oWDO := WDO():Rdbms( "MYSQL", "localhost", "harbour", "hb1234", "dbharbour", 3306 )   //nPort, lLog, bError )

    ::hInfoDB[ "db" ]     := cDatabase
    ::hInfoDB[ "user" ]   := cUsername
    ::hInfoDB[ "pasw" ]   := cPassword
*/    

	RETURN WDO():Rdbms( "MYSQL", "localhost", "harbour", "hb1234", "sysgvs", 3306 )   //nPort, lLog, bError )   //Self

/*----------------------------------------------*/

