syntax on "makes things colorful based on the language they are written on
set number "makes numbers on the side
set rnu		"makes numbers relative to the line you are on

"sets tabs and shifts 4 instead of the default 8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"makes alternate ways to exit insert mode
inoremap kk <esc>
inoremap jj <esc>
inoremap jk <esc>

set laststatus=2 "show the name of the file at the bottom
set statusline+=%p%% "F for full path f for path relitive to working directory
set statusline+=_workdir/%f "F for full path f for path relitive to working directory

set tags=./.tags;$HOME "set tags search to recurse backward
set cscopetag

"function header
inoremap *** /**************************************************<enter>* Title:<enter>* Summary:<enter>* Param:<enter>* Return:<enter>**************************************************/
inoremap ==== ==================================================================================================

:command Com :normal i///<enter>/// \brief  <enter>/// \param  <enter>/// \return <enter>///
"easier way to type an underscore. quickly hit u and then the spacebar
"inoremap u<space> _
"inoremap U<space> _

"used for case insensitive searching if typed in lowercase
"if Upper case letters are used it will be case sensitive
set ignorecase
set smartcase

"common VHDL typo
inoremap ,+ <=

"sets up another highlight group (like TODO is always highlighted)
hi! Note term=reverse ctermbg=13 gui=undercurl guisp=Magenta
match Note /!note/
nmap <C-c>h <C-w>h
nmap <C-c>j <C-w>j
nmap <C-c>k <C-w>k
nmap <C-c>l <C-w>l

map <c-e> :vertical resize +3<cr>
map <c-g> :resize +3<cr>

map <S-E> :vertical resize -3<cr>
"map <S-G> :resize -3<cr> " <S-G> jumps to end of file, and I use that often, I think this one is fine to not exist

"installs plugins added to .vim/bundle 
execute pathogen#infect()

"hot key for FZF
map <c-o> :FZF<cr>

:hi Constant term=bold ctermfg=98 guifg=#e39ff6 gui=bold

"set different backround color for active window
hi NormalNC ctermbg=234
augroup winbg 
    autocmd!
    autocmd WinEnter * setl wincolor=
    autocmd WinLeave * setl wincolor=NormalNC
augroup END

function! Strip_last(start, end)
    execute a:start . "," . a:end . "s/.\s*$//g"
endfunction
xnoremap <Leader>d :<C-u>call Strip_last(line("'<"), line("'>"))<CR>

