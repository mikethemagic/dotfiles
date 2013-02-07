/****************************************************************************\
 * Module:	MODULE $Name:  $
 * programer: $Author$, cad praxis gmbh
 *
 * $Id$
 *
 * BESCHREIBUNG
 *
 * Header zu module MODULE
 *
 * CHANGES:
 * $Log$
 *
 \****************************************************************************/

#error		DEFINES AENDERN !!!!
#ifndef		_CP_MODULE_H
#define		_CP_MODULE_H	1

/*****************************************************************************/
/* Includes */


/*****************************************************************************/
/* Defines */

/*****************************************************************************/
/* Typen */

typedef enum {
	MOD_OK				= CP_OK,
	MOD_ERR				= CP_ERR,
	MOD_ERR_ARG			= CP_ERR_ARG,
	MOD_ERR_MEMORY		= CP_ERR_MEMORY,
	MOD_ERR_RESERVED	= -99				/* darueber einfuegen!! */
} tMODerror;

/*****************************************************************************/
/* PROTOTYPEN */

#error		Modulpräfix ändern !!!
int MODDebugOnOff( int nFlag );
int MODTest( void );

#endif
