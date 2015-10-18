" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
" }

let s:MSWIN = has("win16") || has("win32")   || has("win64")    || has("win95")
let $VIMRC_DIR=$HOME."/.vim"

set nocompatible              " be iMproved, required
filetype off                  " required

" vundle {
        " set the runtime path to include Vundle and initialize
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
        " alternatively, pass a path where Vundle should install plugins
        "let path = '~/some/path/here'
        "call vundle#rc(path)
" }
" pluginlist {
        " let Vundle manage Vundle, required
        Plugin 'gmarik/vundle'

        " The following are examples of different formats supported.
        " Keep Plugin commands between here and filetype plugin indent on.
        " scripts on GitHub repos
        Plugin 'tpope/vim-fugitive'
        " The sparkup vim script is in a subdirectory of this repo called vim.
        " Pass the path to set the runtimepath properly.
        Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
        " öffnet Files einfach
        Plugin 'wincent/Command-T'
        " Explorer für vim
        Plugin 'scrooloose/nerdtree'
        " NERDTree {
            let g:nerdtree_tabs_open_on_gui_startup=0
            let g:nerdtree_tabs_open_on_new_tab=1
            let NERDTreeMouseMode=1
            map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
            map <leader>e :NERDTreeFind<CR>
            nmap <leader>nt :NERDTreeFind<CR>
           
            let NERDTreeShowBookmarks=1
            let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
            let NERDTreeChDirMode=0
            let NERDTreeQuitOnOpen=0
            let NERDTreeShowHidden=1
            let NERDTreeKeepTreeInNewTab=1
        " }
        " Auskommentieren in jedem File richtig
        Plugin 'scrooloose/nerdcommenter'

        " schöne Farben
        Plugin 'altercation/vim-colors-solarized'
        color solarized
        " finde die schliessende Klammer oder was auch immer
        Plugin 'https://github.com/vim-scripts/matchit.zip'
        " schöne bunte Infozeile unten im vim
        Plugin 'https://github.com/Lokaltog/vim-powerline'
        let g:Powerline_symbols = 'fancy'
        " schnelle Bewegungen in Sätzen
        Plugin 'Lokaltog/vim-easymotion'
        " Syntax highlighting für Taskjuggler
        Bundle 'maxmeyer/vim-taskjuggler'
        " json check
        Plugin 'https://github.com/elzr/vim-json'
        " Code-Schnipsel
        Bundle 'honza/vim-snippets'
        Bundle 'xolox/vim-misc'
        Bundle 'xolox/vim-easytags'
        " relative Nummern zur Zeile in der der Cursor ist
        Plugin 'myusuf3/numbers.vim'
        " numbers {
                let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
        " }
        " Control P ergänzt Wortenden gleich richtig
        Plugin 'https://github.com/kien/ctrlp.vim'
        " ctrlp {
                let g:ctrlp_working_path_mode = 'ar'
                let g:ctrlp_map = '<c-p>'
                let g:ctrlp_cmd = 'CtrlP'

                "let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
                let g:ctrlp_custom_ignore = {
                  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
                  \ 'file': '\v\.(exe|so|dll|o|mod)$',
                  \ }
                if has("win32")   " Windows
                    let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
                    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
                else               " MacOSX/Linux
                    let g:ctrlp_user_command = 'find %s -type f'
                    set wildignore+=*/tmp/*,*.so,*.swp,*.zip
                endif
        " }

        " Python plugins {
            " Pick either python-mode or pyflakes & pydoc
            " Bundle 'klen/python-mode'
            Bundle 'python.vim'
            Bundle 'python_match.vim'
            Bundle 'pythoncomplete'
        " }
" }

filetype plugin indent on     " required
filetype plugin on            

" Filespezifische Makros und Templates {
if !exists("autocommands_loaded")
    let autocommands_loaded = 1

    " file types
    autocmd FileType javascript set ts=4 sw=4
    autocmd FileType html set ts=2 sw=2
    autocmd BufNewFile,BufRead *.css.dtml setfiletype css
    autocmd BufNewFile,BufRead *.zcml setfiletype xml
    autocmd FileType fortran set noexpandtab

    " python
    augroup filetype_python
       autocmd!
		 autocmd FileType python set ts=4 sw=4 expandtab nocin nosi ai
		 autocmd FileType python set makeprg=pyflakes\ %
		 autocmd FileType python set efm=%f:%l:%m
		 autocmd BufNewFile,BufRead *.cpy setfiletype python
		 let pymode_lint_write=0
    augroup END

    " C mode
    autocmd FileType c set fo=croq ts=8 sw=8 cin si ai
    autocmd FileType c syn region cSpecial start="_DBG" end=");"

    "augroup filetype_fortran
        "autocmd!
        "autocmd BufRead,BufNewFile *.f,*.for,*.FOR,*.cmm,*.CMM	set tw=80 cin noic
        "autocmd BufRead,BufNewFile *.f,*.for,*.FOR,*.cmm,*.CMM	iabbrev  kfh mein Fortran Test
        "autocmd BufRead,BufNewFile *.f,*.for,*.FOR,*.cmm,*.CMM	source "/home/mistangl/.vim/macros/fortranmakros.vim"
    "augroup END

    "spezielles syntax highlighting 
     "autocmd FileType tjp       source  $VIMRC_DIR./syntax/tjp.vim"
    "autocmd FileType c source  $VIMRC_DIR./syntax/prosyntax.vim"
    "autocmd FileType fortran source  $VIMRC_DIR./syntax/fortransyntax.vim"
    "autocmd FileType matlab  source  $VIMRC_DIR./syntax/matlabsyntax.vim"


endif
" }
"
"
let mapleader = ","
set nospell

" LoadGui Fonts {
if has('gui_running')
    if has("gui_gtk2")
        set guifont=Andale\ Mono\ Regular\ 11,Menlo\ Regular\ 10,Consolas\ Regular\ 11,Courier\ New\ Regular\ 13
    else
        set guifont=Andale\ Mono\ Regular:h14,Menlo\ Regular:h13,Consolas\ Regular:h14,Courier\ New\ Regular:h16
    endif
    if has('gui_macvim')
        set transparency=2          " Make the window slightly transparent
    endif
    set background=light
else
    set background=dark
endif
" }
" ShowMarks {
    let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    " Don't leave on by default, use :ShowMarksOn to enable
    let g:showmarks_enable = 0
    " For marks a-z
    highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
    " For marks A-Z
    highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
    " For all other marks
    highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
    " For multiple marks on the same line.
    highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
" }
set autoread                    " automatically reads, helpful when VCS may have changed the file


" FX-keys {
    nmap <F2> :w
    nmap <S-F2> :make
    nmap <C-F2> :make %<

    nmap <F4> :bdel
    nmap <S-F4> :close
    nmap <F5> :bp
    nmap <F6> :bn
    nmap <S-F5> :cp
    nmap <S-F6> :cn

    " tags
    nmap <F8> 
    nmap <C-F8> 
    nmap <S-F8> :tn
    nmap <F7> 

    " Split-Window Movement: <apple><cursorkeys>
    nmap <D-Up> <Up>
    nmap <D-Down> <Down>
    nmap <D-Right> <Right>
    nmap <D-Left> <Left>
    nmap <C-S-Up> <Up>_
    nmap <C-S-Down> <Down>_

    " folding
    nmap <M-C-Left> zf%
    nmap <M-C-Right> zO
    nmap <F12> zf%]]
    nmap <S-F12> zO]]
" }
" editing vimrc {
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>
" }
" useful abbreviations {
    iabbrev @@    michael.stangl@googlemail.com
    iabbrev ccopy Copyright 2015 Michael Stangl, all rights reserved.
" }
" useful editing mappings {
"   ein Wort in "" setzen
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
"   Mappings für Movements: 
"   Alle funktionsparameter löschen
    onoremap p i(
"   body der Funktion löschen
"   onoremap b /return<cr>
"
"   grep nach dem Wort unter dem Cursor
    nnoremap <leader>g :grep -R '<cWORD>' .<cr>
" }

set hlsearch
set incsearch

