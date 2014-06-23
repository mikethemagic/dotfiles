################################################################################

=head2 FUNC( )

DESCRIPTION

B<In:>

	ARG_IN

B<Out:>

	ARG_OUT

B<Return:>

	M_OK
    M_ERR
    M_ERR_ARG

=cut
################################################################################
sub FUNC {
	my ( $ARG )		= @_;

	my ( $ret, $msg )	= ( M_OK, "" );
	
	_DBG($dbg, "{FUNC( )");
	
	unless ( $ARG )		_DBGERR( $dbg, M_ERR_ARG );
	

	$ret = M_OK;
	
DONE:
	_DBGRETURN( $dbg, $ret );	
}

