################################################################################

=head1 SCRIPT.pl

$Id:$

=head2 Description

description of SCRIPT

perl version: perl 5.6

programer: 

COPYRIGHT: 
	This script is the intellectual property of CAD Praxis GmbH. It may not be
	modified in any way without the author's explicit prior consent.

=head2 Changes

$Log:$

=cut
################################################################################
use strict;

# perl modules
use constant;
use Getopt::Std;

# cadp modules
use CpDbgFilter;
use CpDebug;
use CpStdlib;

# constants
use constant MOD_ERR_MOD	=> -101;
DEFINES

# global variables
my $SourceName			= "SCRIPT";

my $dbg					= FALSE;	

my %GLOBALS				= ();

GLOBALS

################################################################################

=head2 CommandLineSwitchesGet( )

get the command line switches

B<In:>

	none

B<Out:>

	none

B<Return:>

	CP_ERR...

=cut
################################################################################
sub CommandLineSwitchesGet{
	my $ret						= "";
	my $Opt						= "";
	my %Opts					= ();
	
	_DBG($dbg, "{CommandLineSwitchesGet( )");
	
	$ret= getopts('dhu:', \%Opts);
	if ($ret == 0) 									_DBGERR($dbg, CP_ERR_ARG);
	_DBGH($dbg, \%Opts);
	if (%Opts){
		if ($Opts{'d'}){ $dbg= TRUE; }
		if ($Opts{'h'}){
			UsageDisplay();
			exit;
		}
		if ($Opts{'u'}){ $GLOBALS{'USER_NAME'}= $Opts{'u'}; }
	}
	_DBGH($dbg, \%GLOBALS);
	
	# benoetigte switches pruefen...
	if (not $GLOBALS{'USER_NAME'})					_DBGERR($dbg, CP_ERR_ARG);

	$ret= CP_OK;
	
DONE:
	_DBGRETURN($dbg, $ret);	
}

################################################################################

=head2 UsageDisplay( )

zeigt Programmoptionen

B<In:>

	none

B<Out:>

	none

B<Return:>

	none

=cut
################################################################################
sub UsageDisplay{
	
	print 	   "\nUsage: $SourceName [Option]\n",
			   "\n",
			   "\t-d,\t\tcreate debug file\n",
			   "\t-h,\t\tdisplay usage\n",
			   "\t-u <USER>,\tLogon user\n\n",
			   "\te.g.: $SourceName -h".
			   "\n\n";
	return;		   
}

#################################################################################
# Main
#################################################################################
{
	my $ret					= CP_OK;

	_DBGSET($dbg, "$SourceName.dbg");

	# Arguments?
	$ret= CommandLineSwitchesGet();
	if ($ret != CP_OK)							_DBGERR( $dbg, $ret	);

	MAIN_BODY
	
	$ret= CP_OK;
	
DONE:
	if ( $ret != CP_OK ){
		if ($ret == CP_ERR_ARG){
			print "$SourceName: Error in Arguments\n";
			UsageDisplay();
		}
		else {
			print "$SourceName: general Error, use debug\n";
		}
	}

	_DBGEXIT($dbg, $ret);
}

FUNCTIONS

