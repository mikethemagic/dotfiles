" $Name$
" $Log$
"
"

iab keif    :r $VIMRC_DIR/templates/cpp/if_eif_else.cpp
iab kfhead  :r $VIMRC_DIR/templates/cpp/kfhead.cpp
iab kfor    :r $VIMRC_DIR/templates/cpp/for.cpp
iab khclass :r $VIMRC_DIR/templates/cpp/class.h/Class
iab khhead  :r $VIMRC_DIR/templates/cpp/mhead.h/HEADER
iab kif     :r $VIMRC_DIR/templates/cpp/if.cpp
iab kli     :r $VIMRC_DIR/templates/cpp/list.cpp
iab kmclass :r $VIMRC_DIR/templates/cpp/class.cpp/Class
iab kmhead  :r $VIMRC_DIR/templates/cpp/mhead.cpp
iab ksw     :r $VIMRC_DIR/templates/cpp/switch.cpp
nmap <F11> I<Del><Del><Del>A?*/Dj
nmap <F12> I/* A */j



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
