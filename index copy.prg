/*
// {% HB_SetEnv( 'HB_INCLUDE', "C:\harbourquitar\include" ) %}   // Precompilacion No funciona, siempre busca en C:\harbour\include
*/

/*
La precompilacion {% ... %} ejecuta antes de COMPILAR el prg. Si lo que compila devuelve algo, "ensucia"  tu codigo. Si pones el signo de comentarios //, precompilara, devolvera lo que sea y se quedara en el comentario. Imaginad esta sentencia         // {% time() %}
Esto quedaria en el programa:     // 19:37:27
Luego el mod harbour compila el codigo, pero como esta marcado como comentario no le hace caso
Esto da una potencia brutal a tu codigo
Puedes dar una pre config antes de la ejecucion de tu programa
*/

#include 'hbclass.ch'	
#include 'common.ch'
#include 'error.ch'

/* Mostrar Errores - Código PHP
*/

/* Incluir requerimientos
*/
#include "{% hb_getenv( 'PRGPATH' ) + '/routes/routes.prg' %}"
#include "{% hb_getenv( 'PRGPATH' ) + '/controllers/routes.controller.prg' %}"

function main()

	local oIndex
	
	set( _SET_CODEPAGE, 'UTF8EX' ) 

	oindex := tRoutesController()
	oIndex:Index()

	// Ap_Echo( "ya voy por acá" )

return nil
