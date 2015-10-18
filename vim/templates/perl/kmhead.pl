#!/usr/bin/perl -w
################################################################################
=pod

=head2 $HeadURL: $

=head1 NAME

MODNAME -

makes ...

=head1 SYNOPSIS

MODNAME [options] 

 Options:
   -help            brief help message
   -man             full documentation

=head1 OPTIONS

=over 8

=item B<-help>

Print a brief help message and exits.

=item B<-man>

Prints the manual page and exits.

=back 

=head1 DESCRIPTION

B<MODNAME> will ...

=head1 COPYRIGHT

=over  4

=item  $Author: $

=item  $Rev: $

=item  $Date: $

=back  4

Copyright Syntops GmbH 2007

compiler: perl 5.8

=head1 FUNCTIONS

=cut
################################################################################

use MDebug;
use MUtils;
use Getopt::Long;
use Pod::Usage;
# use Data::Dumper;

use strict;

my $debug = 1;

my $help="";
my $man="";

my $DebugFile = "MODNAME.dbg";
Tr2PlatformPath( $DebugFile );
_DBGSET( $debug, $DebugFile);

GetOptions (	'help|?'    => \$help,
                'man' 	    => \$man,
                'date|d=s'  => \$WishedDate)
or pod2usage( -exitval => M_ERR_ARG, -verbose => 1 );
pod2usage( -exitval => M_OK, -verbose => 1 ) if ( $help );
pod2usage(-exitstatus => 0, -verbose => 2) if $man;

__END__


# vim: set tw=75 ft=perl ts=4 sw=4 expandtab :
