@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

@set BASE_DIR=%HOME%\dotfiles
IF NOT EXIST "%BASE_DIR%" (
  call git clone --recursive -b 3.0 https://github.com/mikethemagic/dotfiles.git "%BASE_DIR%"
) ELSE (
    @set ORIGINAL_DIR=%CD%
    echo updating dotfiles
    chdir /d "%BASE_DIR%" 
    call git pull
    chdir /d "%ORIGINAL_DIR%"
    call cd "%BASE_DIR%" 
)

echo setting up symlinks
call mklink "%HOME%\_vimrc" "%BASE_DIR%\.vimrc"
REM call mklink /J "%HOME%\vim" "%BASE_DIR%\vim"
call mklink "%HOME%\.gitconfig" "%BASE_DIR%\.gitconfig"
call mklink "%HOME%\.gitignore" "%BASE_DIR%\.gitignore"

echo installing vundle
IF NOT EXIST "%BASE_DIR%\bundle" (
	call mkdir "%BASE_DIR%\bundle"
)

IF NOT EXIST "%BASE_DIR%/bundle/vundle" (
	call git clone https://github.com/gmarik/vundle.vim.git "%BASE_DIR%/bundle/vundle"
)

echo updating plugins using Vundle
call gvim -u "%BASE_DIR%\.vimrc" +BundleInstall! +BundleClean +qall
