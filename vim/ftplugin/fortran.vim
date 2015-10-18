" $Name$
" $Log$
"

set ts=3
set sw=3
set expandtab 
set syntax=fortran
set textwidth=72
" let fortran_do_enddo=1
" if version >= 600
   " let fortran_fold=1
   " let fortran_more_precise=
" endif 

iab kfhead :r $VIMRC_DIR."/templates/fortran/kfhead.for"
iab kfe :r $VIMRC_DIR."/templates/fortran/kfe.for"
iab ktst :r $VIMRC_DIR."/templates/fortran/ktest.for"
iab kmhead :r $VIMRC_DIR."/templates/fortran/mhead.for"
iab kfor :r $VIMRC_DIR."/templates/fortran/for.for"
iab kkk :r $VIMRC_DIR."/templates/fortran/kommentar_gr.for"
iab kkg :r $VIMRC_DIR."/templates/fortran/kommentar_kl.for"
iab keif :r $VIMRC_DIR."/templates/fortran/if_eif_else.for"
iab kif :r $VIMRC_DIR."/templates/fortran/if.for"
iab ksw :r $VIMRC_DIR."/templates/fortran/switch.for"
iab kwh :r $VIMRC_DIR."/templates/fortran/kwhile.for"

nmap <F11> 0r j
nmap <F12> 0rCj

nmap <S-F3> :!ctags --fortran-types=bcefiklLmnpstv --recurse --sort=yes
nmap <F3> :!kom % 
nmap <C-F3> :!kom --cmm_info % 

"-----------------------------------
" Debugsets
"-----------------------------------
"
" Debug am Beginn jeder Fktion
iab _df oCALL DBG( DBG, 'FNAME' )kdd0/\<FNAME\>/b
"
" Kommentar
iab _dk oCALL DBGK( DBG, 'COMMENT' )kdd/\<COMMENT\>/b
"
" Debug fuer Boolsche Variable
iab _db oCALL DBGB( DBG, 'BOOL', BOOL )kdd/\<BOOL\>/b
"
" Debug fuer integer 
iab _di oCALL DBGI( DBG, 'INT', INT )kdd/\<INT\>/b
"
" Debug fuer Real
iab _dr oCALL DBGR( DBG, 'REAL', REAL )kdd/\<REAL\>/b
"
" Debug fuer Double
iab _dd oCALL DBGD( DBG, 'DOUBLE', DOUBLE )kdd/\<DOUBLE\>/b
"
" Debug fuer String
iab _ds oCALL DBGS( DBG, 'STRING', STRING )kdd/\<STRING\>/b
"
" Debug fuer Complexe Zahl
iab _dc oCALL DBGC( DBG, 'COMPLEX', COMPLEX )kdd/\<COMPLEX\>/b
"
" Debugreturn 
iab _de oCALL DBGRET( DBG, IERR )
"
" Error
iab _er oIF ( IERR .NE. 0 )    CALL DBGERR( DBG, IERR )kdd
"
" Debug einer Liste
iab _dl oCALL LDBG( DBG, IT )kdd0/\<IT\>/b
"
" Debug einer Variablenliste
iab _dv oCALL VLDBG( DBG, VLID )kdd0/\<VLID\>/b

" Varliste Werte setzen
iab _vs oCALL VLSETS( VLID, KEY, STRING, IERR )kdd0/\<VLID\>/b
iab _vb oCALL VLSETB( VLID, KEY, BOOL, IERR )kdd0/\<VLID\>/b
iab _vi oCALL VLSETI( VLID, KEY, INTEGER, IERR )kdd0/\<VLID\>/b
iab _vr oCALL VLSETR( VLID, KEY, REAL, IERR )kdd0/\<VLID\>/b
iab _vd oCALL VLSETD( VLID, KEY, DOUBLE, IERR )kdd0/\<VLID\>/b


"-----------------------------------
" Abk�rzungen der Typen
"-----------------------------------
"
iab boo LOGICAL
iab log LOGICAL
iab int INTEGER
iab flo REAL
iab rea REAL
iab dou DOUBLE PRECISION
iab cmp COMPLEX
iab cha CHARACTER*(*)
iab str CHARACTER*(*)

