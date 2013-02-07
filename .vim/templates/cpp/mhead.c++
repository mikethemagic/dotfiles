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

#error		Modulpräfix ändern !!!
MODTest::MODTest()
	{
	_DBG(( dbg, "<MODTest instanziiert"));
	}

MODTest::~MODTest()
	{
	_DBG(( dbg, ">MODTest beendet"));
	}

KLASSENNAME::KLASSENNAME()
	{
	_DBG(( dbg, "<KLASSENNAME instanziiert"));
	}

KLASSENNAME::~KLASSENNAME()
	{
	_DBG(( dbg, ">KLASSENNAME beendet"));
	}

