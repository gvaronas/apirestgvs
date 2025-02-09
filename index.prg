/*
//  {% HB_SetEnv( 'HB_INCLUDE', "C:\harbour\include" ) %}   // Precompilacion No funciona, siempre busca en C:\harbour\include
//	{% mh_LoadHRB( '/lib/wdo/wdo.hrb' ) %}					//	Loading WDO lib
//	{% HB_SetEnv( 'WDO_PATH_MYSQL', "d:/xampp/htdocs/" ) %}	//	Usuarios Xampp
*/

/*
La precompilacion {% time() %} ejecuta antes de COMPILAR el prg. Si lo que compila devuelve algo, "ensucia"  tu codigo. 
Si pones el signo de comentarios //, precompilara, devolvera lo que sea y se quedara en el comentario. Imaginad esta sentencia         // {% time() %}
Esto quedaria en el programa:     // 19:37:27
Luego el mod harbour compila el codigo, pero como esta marcado como comentario no le hace caso
Esto da una potencia brutal a tu codigo
Puedes dar una pre config antes de la ejecucion de tu programa
*/

#include 'hbclass.ch'	
#include 'common.ch'
#include 'error.ch'

/* Incluir requerimientos */

#include "{% hb_getenv( 'PRGPATH' ) + '/routes/routes.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/routes/servicios/get.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/routes/servicios/post.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/controllers/routes.controller.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/controllers/get.controller.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/models/conection.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/models/get.model.prg' %}"

/* Mostrar Errores - Código PHP */

function main()

	local oRouter
	//local oDb 

	set( _SET_CODEPAGE, 'UTF8EX' ) 

	oRouter := tRoutesController()
	oRouter:Index()

	//Ap_Echo( "ya voy por acá" )

return nil

