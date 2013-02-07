/*****************************************************************************
 * FNAME()
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
int FNAME( ARGS )
{
	int					ret				= CP_OK;

	_DBG(( dbg, "<FNAME( )" ));

	if ( !ARG )							_DBGERR( dbg, CP_ERR_ARG );

	ret = CP_OK;
DONE:
	_DBGDRETURN( dbg, ret );
}
