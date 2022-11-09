syntax on
set number
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
set ignorecase
set smartcase
inoremap ,+ <=
hi! Note term=reverse ctermbg=13 gui=undercurl guisp=Magenta
match Note /!note/
