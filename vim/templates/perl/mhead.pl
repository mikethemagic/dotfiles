################################################################################

=head1 MODULE.pm

$Id:$

=head2 Description

description of MODULE

perl version: perl 5.6

programer: 

COPYRIGHT: 
	This module is the intellectual property of Michael Stangl. It may not be
	modified in any way without the author's explicit prior consent.

=head2 Changes

$Log:$

=cut
################################################################################
package	MODULE;
require	Exporter;
@ISA=		qw(Exporter);
@EXPORT=	qw(
		);

use strict;

# perl modules
use constant;

# cadp modules
use CpDbgFilter;
use CpDebug;
use CpStdlib;

# constants

# global variables
my $ModuleName=		"MODULE";
my $ModuleVersion = '$Id:$';
my $dbg=			FALSE;	

GLOBALS

################################################################################

=head2 DebugOnOff( )

schalte debug Ausgaben an oder aus

B<In:>

	$DbgFlag	- 0 oder 1

B<Out:>

	none

B<Return:>

	none

=cut
################################################################################
sub DebugOnOff{
	my ($DbgFlag) = @_;
	
	$dbg= $DbgFlag;
	_DBG($dbg, "MOD, DEBUG: $dbg");
	return;
}

################################################################################

=head2 Test( )

Testet das Module

B<In:>

	<ARG>

B<Out:>

	<ARG>

B<Return:>

	CP_ERR...

=cut
################################################################################
sub Test{
	my ($ARG) = @_;
	
	my $ret						= CP_OK;

	_DBG($dbg, "{Test( )");
	
	if (not $ARG)									_DBGERR($dbg, CP_ERR_ARG);

	$ret= CP_OK;
	
DONE:
	_DBGRETURN($dbg, $ret);	
}

FUNCTIONS

1;

__END__

=head1 MODULE



= cut

