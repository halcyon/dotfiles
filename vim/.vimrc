" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons([], {'auto_install' : 0})
endfun

call SetupVAM()
VAMActivate Solarized ctrlp vim-classpath vim-clojure-static vim-fireplace github:vim-scripts/vim-niji paredit fugitive
" use <c-x><c-p> to complete plugin names

set background=dark
colorscheme solarized
set gfn=Menlo:h22

inoremap jk <ESC>
let mapleader = ","
" save keystrokes by removing need to press shift to produce : in command mode
nnoremap ; :
set hidden

" Activate LustyJuggler
"nmap <silent> <Leader>b :LustyJuggler<CR>
nmap <silent> <Leader>b :CtrlPBuffer<cr>

" Toggle spelling
nmap <leader>s :setlocal spell! spelllang=en_us<CR>

" show whitespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Makes the down key no longer jump over wrapped lines
nnoremap j gj
nnoremap k gk

nmap <silent> ,/ :nohlsearch<CR>

set nobackup
set noswapfile

set expandtab

set cursorline
set number        " always show line numbers

set encoding=utf-8
set tabstop=2     " a tab is two spaces
