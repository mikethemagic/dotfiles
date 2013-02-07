" $Name$
" $Log$
"
"
set noignorecase
set cin
set smartindent
set ts=4
set sw=4
set sm

iab kfhead :r $HOME/.vim/templates/kfhead.m
iab kmhead :r $HOME/.vim/templates/mhead.m
iab kfor   :r $HOME/.vim/templates/for.m
iab kkk    I% --  A
iab kkg    I% --%     % --kA
iab keif   :r $HOME/.vim/templates/if_eif_else.m
iab kif    :r $HOME/.vim/templates/if.m
iab ksw    :r $HOME/.vim/templates/switch.m
iab kli    :r $HOME/.vim/templates/list.m
nmap <F11> I<Del><Del><Del><Del>j
nmap <F12> I% --j
"
" Debug am Beginn jeder Fktion
iab _ds odbgset( dbg, 'file' );kdd0/\<file\>/b0f'
"
"" Debug am Beginn jeder Fktion
iab _df odbgf( dbg, 'fname' );kdd0/\<fname\>/b0f'
"
" Kommentar
iab _dk dbgk( dbg, 'comment' );kdd/\<comment\>/b0f'
"
" Debug fuer beliebigen Wert
iab _do odbgo( dbg, 'value', value );kdd/\<value\>/b0f'
"
" Debugreturn 
iab _de odbgret( dbg, err );kdd/\<err\>/b0f'
"
