" $Name$
" $Log$
"
iab kscript :r $HOME/.vim/templates/perl/script.pl
iab kfhead :r $HOME/.vim/templates/perl/kfhead.pl
iab kmhead :r $HOME/.vim/templates/perl/mhead.pl
iab kfor   :r $HOME/.vim/templates/perl/for.pl
iab kfe    :r $HOME/.vim/templates/perl/foreach.pl
iab kkk    o#kddA 
iab kkg    :r $HOME/.vim/templates/perl/kommentar_gr.pl
iab keif   :r $HOME/.vim/templates/perl/if_eif_else.pl
iab kif    :r $HOME/.vim/templates/perl/if.pl
iab ksw    :r $HOME/.vim/templates/perl/switch.pl
iab kwh    :r $HOME/.vim/templates/perl/kwhile.pl


nmap <F12> I# j
nmap <F11> I<Del><Del>j
iab _er aif ( $ret != M_OK )		_DBGERR( $dbg, M_ERR );

" Debug fuer String
iab _ds o_DBGS( $dbg, $STRING );kdd0f,ll

" Debug fuer Hash
iab _dh o_DBGH( $dbg, \%HASH );kdd0f,lll

" Debug fuer Array
iab _da o_DBGA( $dbg, \@ARRAY);kdd0f,lll

" mach aus einem Namen eine Perlfunktion
map fff "wywokfhead /FUNC