" ~/.vimrc (configuration file for vim only)
"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" GitHub is used when a user/repo is passed to `Plugin`.
"   Plugin 'gmarik/Vundle.vim' => https://github.com/gmarik/Vundle.vim
"
" Vim Scripts
"   Any single word without a slash '/' is assumed to be from Vim Scripts.
"     Plugin 'ctrlp.vim' => https://github.com/vim-scripts/ctrlp.vim

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Silver searcher ag. https://github.com/rking/ag.vim
Plugin 'rking/ag.vim'

" Ansi escape sequences concealed, but highlighted as specified
Plugin 'AnsiEsc.vim'

" Display reference and definition from cursor
Plugin '5t111111/alt-gtags.vim'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
" URL: kien.github.io/ctrlp.vim
Plugin 'kien/ctrlp.vim'

" GNU Global tag searching
Plugin 'gtags.vim'

" plugin on GitHub repo
" Fugitive is to give git commands in vim
Plugin 'tpope/vim-fugitive'

" dwm.vim : Tiled Window Management for Vim
" https://github.com/spolu/dwm.vim
Plugin 'spolu/dwm.vim'

" Soruce code comment
" https://github.com/scrooloose/nerdcommenter
" http://www.vim.org/scripts/script.php?script_id=1218
Plugin 'scrooloose/nerdcommenter'

" Explore file system
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" or we can get rig of nerdtree by using explore mode
" https://medium.com/@mozhuuuuu/vimmers-you-dont-need-nerdtree-18f627b561c3
" A good youtube guide for CtrlP and NerdTree is
" https://www.youtube.com/watch?v=9XrHk3xjYsw

" 256-color schemes
Plugin 'morhetz/gruvbox'
Plugin 'crusoexia/vim-monokai'
Plugin 'junegunn/seoul256.vim'
" 16-color schemes
Plugin 'chriskempson/base16-vim'
Plugin 'noahfrederick/vim-noctu'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" TODO: craft vimrc follow this guide
" http://dougblack.io/words/a-good-vimrc.html

"-------------------------------------------------------------------------------

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
"set t_ZH=^[[3m
"set t_ZR=^[[23m
let g:gruvbox_contrast_light="hard"
let g:gruvbox_contrast_dark="medium"
"let g:gruvbox_italic=1
set background=dark   " Setting light mode
colorscheme gruvbox

"-------------------------------------------------------------------------------

" Ctags
" http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
" http://www.gnu.org/software/global/manual/global.html
" Look in the current directory for "tags", and work up the tree towards root
" until one is found.
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"-------------------------------------------------------------------------------

" Select all
map <C-a> <esc>ggVG<CR>
cmap w!! w !sudo tee % >/dev/null˿
set cursorline
set hlsearch
set listchars=eol:˿,tab:»-,nbsp:␣,trail:~,extends:>,precedes:<
" vim 7.4.710 suport space: to fix nbsp
set list

map <F2> :NERDTreeToggle<CR>
map <C-S-tab> :tabp<CR>
map <C-tab>   :tabn<CR>
map <C-t>     :tabnew<CR>
"------------------------------------------------------------------------------- 
 
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f' 
" Press <F5> to purge the cache for the current directory to get new files, remove deleted files and     apply new ignore options.
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
" Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" Use <c-y> to create a new file and its parent directories.
" Use <c-z> to mark/unmark multiple files and <c-o> to open them.

