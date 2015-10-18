" $Name$
" $Log$
"
iab kscript :r $VIMRC_DIR/templates/python/script.py
iab kfhead :r $VIMRC_DIR/templates/python/kfhead.py
iab kmhead :r $VIMRC_DIR/templates/python/kmhead.py
iab kfor   :r $VIMRC_DIR/templates/python/for.py
iab kkk    o#kddA 
iab kkg    :r $VIMRC_DIR/templates/python/kommentar_gr.pyjA
iab keif   :r $VIMRC_DIR/templates/python/if_eif_else.py
iab kif    :r $VIMRC_DIR/templates/python/if.py
iab ksw    :r $VIMRC_DIR/templates/python/switch.py
iab kwh    :r $VIMRC_DIR/templates/python/kwhile.py


nmap <F12> I## j
nmap <F11> I<Del><Del><Del>j


nmap K :call ShowPyDoc('<C-R><C-W>', 1)<CR>
iab kpdb import pdb; pdb.set_trace()

