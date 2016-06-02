set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" Python autocomplete
Plugin 'pythoncomplete'
" vim-airline
Plugin 'bling/vim-airline'
" emmet (zen coding)
Plugin 'mattn/emmet-vim'
" vim-autocomplpop
Plugin 'othree/vim-autocomplpop'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" GTAGS
Plugin 'aceofall/gtags.vim'
" CtrlP
Plugin 'kien/ctrlp.vim'
" jedi-vim
Plugin 'davidhalter/jedi-vim'
" trailing white spaces
Plugin 'bronson/vim-trailing-whitespace'

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
" for vim-airline {
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_section_b = '%{strftime("%c")}'
        let g:airline_section_y = 'BN: %{bufnr("%")}'
        let g:airline_powerline_fonts = 1
        set laststatus=2
        " set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
        set guifont=Inconsolata\ for\ Powerline "make sure to escape the spaces in the name properly
" }
" Put your non-Plugin stuff after this line
"
" nerdtree tabs Settings
" for nerdtree tabs {
        let g:nerdtree_tabs_open_on_console_startup = 1
        let g:nerdtree_tabs_open_on_new_tab = 1
" }
"
" for cscope {
    set cscopetag               
    set cscopeprg='gtags-cscope' 
" }
"
" for GTAGS {
    let GtagsCscope_Auto_Load = 1
    let CtagsCscope_Auto_Map = 1
    let GtagsCscope_Quiet = 1
" }
"
" for CtrlP {
   set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
   let g:ctrlp_custom_ignore = {
       \ 'dir':  '\v[\/]\.(git|hg|svn)$',
       \ 'file': '\v\.(exe|so|dll|o|lib|png|jpg|a|obj)$',
       \ 'link': '',
       \ }
   let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" }

" Settings
set bs=2
set history=50
set ruler
set autoread
set nu

filetype off
syntax on
filetype on
filetype indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set incsearch
set hlsearch
set smarttab
set nobackup

" comment color
if !has('gui')
    highlight Comment ctermfg=gray ctermbg=darkblue
endif
