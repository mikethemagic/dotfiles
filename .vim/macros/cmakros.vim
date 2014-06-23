" $Name$
" $Log$
"
"
iab kfhead :r $VIMRC_DIR/templates/c/kfhead.c
iab kmhead :r $VIMRC_DIR/templates/c/mhead.c
iab ksmhead :r $VIMRC_DIR/templates/c/smhead.c
iab khhead :r $VIMRC_DIR/templates/c/mhead.h
iab kfor   :r $VIMRC_DIR/templates/c/for.c
iab kkk    I/* */hhi
iab kkg    I/75a*ahA/ka
iab keif   :r $VIMRC_DIR/templates/c/if_eif_else.c
iab kif    :r $VIMRC_DIR/templates/c/if.c
iab ksw    :r $VIMRC_DIR/templates/c/switch.c
iab kli    :r $VIMRC_DIR/templates/c/list.c
nmap <F11> I<Del><Del><Del>A?*/Dj
nmap <F12> I/* A */j


"++++++++++++++++++++++++++++++++++++++++++++++++++++++
" C++ Gerümpel von badam:
"
" Header für Methoden
iab kme 		:r $VIMRC_DIR/templates/c/mehead.c++
iab kmeh 	:r $VIMRC_DIR/templates/c/mehead.h++

" Header für Module
iab kmod 	:r $VIMRC_DIR/templates/c/mhead.c++
iab kmodh 	:r $VIMRC_DIR/templates/c/mhead.h++

" Header für Klassen
iab kclass 	:r $VIMRC_DIR/templates/c/classhead.c++
iab kclassh	:r $VIMRC_DIR/templates/c/classhead.h++


"-----------------------------------
" Errortypen
"-----------------------------------
"
" Default _DBGERRX am Beginn jeder Fktion
iab _ex a _DBGERRX ( dbg, " ()",  );bbli
"
" Default _DBGERR am Beginn jeder Fktion
iab _er a _DBGERR ( dbg,  );bli
"
"-----------------------------------
" Debugsets
"-----------------------------------
"
" Debug am Beginn jeder Fktion
iab _db o_DBG(( dbg,"<FNAME()", ));kdd0f,
"
" Debug leer
iab _dl o_DBG(( dbg,"", ));kdd0f,
"
" Debug fuer Float
iab _df o_DBGF( dbg, FloatVar );kdd0f,
"
" Debug fuer integer 
iab _di o_DBGD( dbg, intVar );kdd0f,
"
" Debug fuer String
iab _ds o_DBGS( dbg, StringPtr );kdd0f,
"
" Debug fuer Pointer
iab _dp o_DBGP( dbg, Ptr );kdd0f,
"
" Debug fuer Vektor 
iab _dv o_DBGV( dbg, ProVector );kdd0f,
"
" Debug fuer Matrix
iab _dm o_DBGM( dbg, Matrix );kdd0f,
"
" Debug fuer Geomitem/ Modelitem
iab _dg o_DBGF( dbg, Feat );kdd0f,
