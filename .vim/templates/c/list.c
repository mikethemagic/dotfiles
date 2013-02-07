char 				*szCurrentString 	= NIL(char);
HCpStrList 			MyList 				= (HCpStrList)NULL;

ret = CpStrListCreate( &MyList );
if ( ret != CPSLIST_OK )				_DBGERR( dbg, CP_ERR );

ret = CpStrListFirst( InList );
if ( ret != CPSLIST_OK )				_DBGERR( dbg, CP_ERR );
do {
	ret = CpStrListGetActual( InList , &szCurrentString );
	if ( ret != CPSLIST_OK )			_DBGERR( dbg, CP_ERR );

	ret = CpStrListInsertLast( MyList, szCurrentString );
	if ( ret != CPSLIST_OK )			_DBGERR( dbg, CP_ERR );

} while ( CpStrListNext( InList ) == CPSLIST_OK );


