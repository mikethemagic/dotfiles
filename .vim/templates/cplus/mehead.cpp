/*****************************************************************************
 * METHODENNAME()
 * Zugriff: 
 *
 * AUTOR:
 * REVISION:
 *
 * BESCHREIBUNG
 *
 * (IN)
 * 		ARGNAME		DESCR
 * (OUT)
 * 		ARGNAME		DESCR
 * (RETURN VALUE)
 * 		VALUE		DESCR
 */
int KLASSENNANME::METHODENNAME( ARGS )
	{
	int					ret				= CP_OK;

	_DBG(( dbg, "<KLASSENNANME::METHODENNAME( )" ));

	if( !ARGS ) _DBGERR ( dbg, CP_ERR_ARG );


	ret = CP_OK;
	DONE:
		_DBGDRETURN ( dbg, ret );
	}
