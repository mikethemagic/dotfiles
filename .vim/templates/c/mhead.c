/****************************************************************************\
 * Module:	$Name:  $
 * programer: $Author$, cad praxis gmbh
 *
 * $Id$
 *
 * BESCHREIBUNG
 *
 * CHANGES:
 * $Log$
 *
 \****************************************************************************/

/* standard includes  	*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Pro/Toolkit includes */
/* ProDevelop Includes 	*/
/* cadp includes 		*/
#include <cpdebug.h>
#include <cpstdlib.h>

/* Application Includes */
#error		Headerfile angeben !!!
#include "MODULE.H"

/*****************************************************************************/
/* Defines */

/*****************************************************************************/
/* Typen */

/*****************************************************************************/
/* Programmglobale Variable */

/*****************************************************************************/
/* Modulglobale Variable */

/* Debug-Flag: Debug-Ausgaben aktiv/inaktiv (1/0) */
#ifdef _DEBUG
static int dbg = 1;
#else
static int dbg = 0;
#endif

static char *szModuleVersion = "$Id:$";

/*****************************************************************************/
/* PROTOTYPEN */

/*****************************************************************************/
/** EXPORTED FUNCTIONS *******************************************************/
/*****************************************************************************/

/*****************************************************************************
 * MODDebugIncrease()
 *
 * ZWECK:
 *
 * Debug zur Laufzeit um eins erhoehen
 *
 * (IN)
 * 		nFlag		neuer Wert des debug-flags (1:ein, 0:aus)
 */
#error		Modulpräfix ändern !!!
int MODDebugIncrease( int nFlag )
{
	dbg++;
	_DBG(( dbg, "MOD: DEBUG %s", dbg?"ON":"OFF" ));
	return CP_OK;
}

/*****************************************************************************
 * MODDebugDecrease()
 *
 * ZWECK:
 *
 * Debug zur Laufzeit um eins verringern
 *
 * (IN)
 * 		nFlag		neuer Wert des debug-flags (1:ein, 0:aus)
 */
#error		Modulpräfix ändern !!!
int MODDebugDecrease( int nFlag )
{
	dbg=dbg>0?dbg-1:0;
	_DBG(( dbg, "MOD: DEBUG--%s", dbg?"ON":"OFF" ));
	return CP_OK;
}

/*****************************************************************************
 * MODDebugOnOff()
 *
 * ZWECK:
 *
 * Debug zur Laufzeit ein/ausschalten
 *
 * (IN)
 * 		nFlag		neuer Wert des debug-flags (1:ein, 0:aus)
 */
#error		Modulpräfix ändern !!!
int MODDebugOnOff( int nFlag )
{
	dbg = nFlag;
	_DBG(( dbg, "MOD: DEBUG %s", dbg?"ON":"OFF" ));
	return CP_OK;
}

/*****************************************************************************
 * MODTest()
 *
 * ZWECK:
 *
 * Testfunktion fuer dieses Modul
 *
 * (IN)
 * 		ARGNAME		DESCR
 * (OUT)
 * 		ARGNAME		DESCR
 * (RETURN VALUE)
 * 		VALUE		DESCR
 */
#error		Modulpräfix ändern !!!
int MODTest( void )
{
	int					ret				= CP_OK;

	_DBG(( dbg, "<MODTest( )" ));

DONE:
	_DBGDRETURN( dbg, ret );
}

/*****************************************************************************/
/** STATIC FUNCTIONS *********************************************************/
/*****************************************************************************/
