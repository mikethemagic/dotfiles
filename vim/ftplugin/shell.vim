" $Name$
" $Log$
"

nmap <F11> 0xj
nmap <F12> 0i#j

iab kfhead :r $HOME/.vim/templates/bash/kfhead.sh
iab kmhead :r $HOME/.vim/templates/bash/mhead.sh
iab ksh   :r $HOME/.vim/templates/bash/sh.sh
iab keif   :r $HOME/.vim/templates/bash/if_eif_else.sh
iab kif    :r $HOME/.vim/templates/bash/if.sh
iab ksw    :r $HOME/.vim/templates/bash/switch.sh
iab kwh    :r $HOME/.vim/templates/bash/kwhile.sh
:imap <buffer> ,fo <C-O>mzfor thing in Mercury Venus Earth<CR> do<CR> echo $thing  <CR>done<CR><C-O>'z;;

":imap <buffer> ,fo <C-O>mzfor( %%%; %%%; %%%)<CR>{ // %%%<CR>%%%<CR>}<CR><C-O>'z;;

:imap <buffer> ,, <C-O>/%%%<CR><C-O>c3l
:nmap <buffer> ,, /%%%<CR>c3l


