syntax on
set number
set rnu
set tabstop=4
set softtabstop=4
set shiftwidth=4
inoremap jj <esc>
inoremap kk <esc>
set laststatus=2 "show the name of the file at the bottom
set tags=./.tags;$HOME "set tags search to recurse backward
set statusline+=%F "F for full path f for path relitive to working directory
inoremap *** /**************************************************<enter>* Title:<enter>* Summary:<enter>* Param:<enter>* Return:<enter>**************************************************/
inoremap ==== ============================================================
inoremap u<space> _
inoremap U<space> _

"used for case insensitive searching if typed in lowercase
"if Upper case letters are used it will be case sensitive
set ignorecase
set smartcase

"common VHDL type
inoremap ,+ <=

"use :highlight to get more info on highlight groups, also :match
hi! Note term=reverse ctermbg=13 gui=undercurl guisp=Magenta
match Note /!note/

" fast window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
