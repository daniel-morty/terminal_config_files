syntax on "makes things colorful based on the language they are written on
set number "makes numbers on the side
set rnu		"makes numbers relative to the line you are on

"sets tabs and shifts 4 instead of the default 8
set tabstop=4
set softtabstop=4
set shiftwidth=4

"makes alternate ways to exit insert mode
inoremap kk <esc>
inoremap jj <esc>

set laststatus=2 "show the name of the file at the bottom
set statusline+=%F "F for full path f for path relitive to working directory

set tags=./.tags;$HOME "set tags search to recurse backward

"function header
inoremap *** /**************************************************<enter>* Title:<enter>* Summary:<enter>* Param:<enter>* Return:<enter>**************************************************/
inoremap ==== ============================================================

"easier way to type an underscore. quickly hit u and then the spacebar
inoremap u<space> _
inoremap U<space> _

"used for case insensitive searching if typed in lowercase
"if Upper case letters are used it will be case sensitive
set ignorecase
set smartcase

"common VHDL typo
inoremap ,+ <=

"sets up another highlight group (like TODO is always highlighted)
hi! Note term=reverse ctermbg=13 gui=undercurl guisp=Magenta
match Note /!note/

" fast window switching if multple files are open in the same session
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
