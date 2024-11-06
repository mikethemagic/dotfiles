" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
" }

" Plug Installation {
let data_dir = has('nvim') ? stdpath('data') . '/site' : '$HOME/vimfiles'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('$HOME/vimfiles/autoload/plug.vim'))
  silent !curl -fLo $HOME/vimfiles/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | source $MYVIMRC | endif
" }

" pluginlist {
call plug#begin('$HOME/vimfiles/plugged')

        " The following are examples of different formats supported.
        " Keep Plug commands between here and filetype plugin indent on.
        " scripts on GitHub repos
        Plug 'tpope/vim-fugitive' 
        " The sparkup vim script is in a subdirectory of this repo called vim.
        " Pass the path to set the runtimepath properly.
        Plug 'rstacruz/sparkup', {'rtp': 'vim/'}   
        " öffnet Files einfach
        Plug 'wincent/Command-T'  
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
        Plug 'scrooloose/nerdcommenter' 
        " compilieren in jedem File richtig
        Plug 'vim-scripts/SingleCompile' 

        " ack integration
        Plug 'mileszs/ack.vim' 
        " finde das richtige encoding
        Plug 's3rvac/AutoFenc'  
        " schöne Farben
        Plug 'altercation/vim-colors-solarized'  
        syntax enable
    	"set background=dark

        " finde die schliessende Klammer oder was auch immer
        Plug 'vim-scripts/matchit.zip' 
        " schöne bunte Infozeile unten im vim
        Plug 'Lokaltog/vim-powerline' 
        let g:Powerline_symbols = 'fancy'
        " schnelle Bewegungen in Sätzen
        Plug 'Lokaltog/vim-easymotion' 
        " Syntax highlighting für Taskjuggler
        Plug 'maxmeyer/vim-taskjuggler' 
        " json check
        Plug 'elzr/vim-json' 
        " Code-Schnipsel
        Plug 'MarcWeber/vim-addon-mw-utils' 
        Plug 'tomtom/tlib_vim'
        "let g:snipMate = { 'snippet_version' : 1 }
        "Plug 'garbas/vim-snipmate' 
        "Plug 'honza/vim-snippets' 
        Plug 'xolox/vim-misc' 
        "Plug 'xolox/vim-easytags'
        " Control P ergänzt Wortenden gleich richtig
        Plug 'kien/ctrlp.vim' 
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
        "Plug 'Chiel92/vim-autoformat'
        "Plug 'clang-complete'
        Plug 'justmao945/vim-clang' 
        let g:clang_c_options = '-std=gnu11'
        let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
        "Plug 'Shougo/vimproc'
        "Plug 'rhysd/vim-clang-format'
        "Valloric/YouCompleteMe
        "
        Plug 'xolox/vim-lua-ftplugin' 
  
      " ag the faster Ack
        Plug 'rking/ag.vim'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
  
        " formatiert c/cpp-Blöcke im vim
        "map <C-I> :pyf c:\Program\ Files\LLVM\share\clang\clang-format.py<CR>
        "imap <C-I> <c-o>:pyf c:\Program\ Files\LLVM\share\clang\clang-format.py<CR>
        " Python plugins {
            " Pick either python-mode or pyflakes & pydoc
            "Plug 'klen/python-mode'
            "Plug 'python.vim'
            "Plug 'python_match.vim'
            "Plug 'pythoncomplete'
        " }
call plug#end()
" }
colorscheme solarized

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


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
        "autocmd BufRead,BufNewFile *.f,*.for,*.FOR,*.cmm,*.CMM	source "$HOM/.vim/macros/fortranmakros.vim"
    "augroup END

    "spezielles syntax highlighting 
     "autocmd FileType tjp       source  $VIMRC_DIR./syntax/tjp.vim"
    "autocmd FileType c source  $VIMRC_DIR./syntax/prosyntax.vim"
    "autocmd FileType fortran source  $VIMRC_DIR./syntax/fortransyntax.vim"
    "autocmd FileType matlab  source  $VIMRC_DIR./syntax/matlabsyntax.vim"


endif
" }
"
let mapleader = ","
set nospell

" LoadGui Fonts {
if has('gui_running')
    if has("gui_gtk2")
        set guifont=Lucida\ Sans\ Typewriter\ 11,Menlo\ Regular\ 10,Consolas\ Regular\ 11,Courier\ New\ Regular\ 13

    else
        set guifont=Lucida\ Sans\ Typewriter:h11,Menlo\ Regular:h13,Consolas\ Regular:h14,Courier\ New\ Regular:h16
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



" Next item on list
map <leader>n :cn<cr>
" Previous item on list
map <leader>p :cp<cr>



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
    iabbrev ccopy Copyright 2016 Michael Stangl, all rights reserved.
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
"
" set grep program to ripgrep {
if executable('rg')
  "set grepprg=rg\ -H\ --no-heading\ --vimgrep
  set grepprg=rg\ -H\ \ --vimgrep\ --hidden
  set grepformat=%f:%l:%c:%m
endif
" }
"" Ctrl-P (so eingerichtet, dass RipGrep - rg verwendet wird)
if executable('rg')
  " rg in CtrlP zum Auflisten von Dateien verwenden. Blitzschnell und beachtet .gitignore
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

  " rg ist schnell genug, dass CtrlP keinen Cache benötigt
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 1
set hlsearch
set incsearch
set tags=./tags,tags,../tags
syntax on
