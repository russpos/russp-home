call pathogen#infect()

syntax on
set ruler
set noerrorbells
set number
set ignorecase
set visualbell

set ci sc wmnu nosol bs=indent,eol,start ls=1

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set mouse=a
set so=14

set list!
set listchars=tab:>.
set listchars=trail:.


" Settings that have been deprecated in nvim. Keeping this here
" for settings on machines that vim.
if !has('nvim')
  set ttymouse=xterm2
endif


filetype plugin on
filetype indent on
autocmd FileType python set textwidth=79

inoremap ` <ESC>

au BufEnter * if &filetype == "python" | match ErrorMsg '\%>79v.\+' | endif

vnoremap < <gv
vnoremap > >gv
nmap     <C-K> :set invpaste<CR>
nmap     <C-N> :set invnumber<CR>
nmap     <C-M> :set mouse=<CR>:set nonumber<CR>
noremap  <C-J> :set mouse=a<CR>:set number<CR>
map  <D-S> :w<CR>
map  <C-S> :w<CR>

nmap <C-T> :FufFile<CR>
nmap <C-B> :FufBuffer<CR>

" allow chanigng unsaved buffers
set hidden

colorscheme russp

" Enable snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Enable syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

try
    source $HOME/Checkouts/local-scripts/vimrc
catch
    " No local overrides. that's OK
endtry

scriptencoding utf-8
set encoding=utf-8
