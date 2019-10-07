let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
imap <F3> =strftime("%Y-%m-%d %H:%M:%S")
inoremap <F1> 
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
vnoremap 	 %
nnoremap 	 %
map  :NERDTreeToggle
xmap ,T <Plug>(table-mode-tableize-delimiter)
xmap ,tt <Plug>(table-mode-tableize)
nmap ,tt <Plug>(table-mode-tableize)
nnoremap <silent> ,tm :call tablemode#Toggle()
nmap ,rtws :%s/\s\+$//e
nmap ,bp :bprevious
nmap ,bd :bdelete
nmap ,bn :bnext
nnoremap ,  :noh
vnoremap / /\v
nnoremap / /\v
nnoremap ; :
nnoremap K :grep! "\b\b":cw
vmap [% [%m'gv``
nnoremap \ :Ag 
vmap ]% ]%m'gv``
vmap a% [%v]%
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nnoremap <silent> gd :call LanguageClient_textDocument_definition()
nnoremap j gj
nnoremap k gk
nnoremap <SNR>101_: :=v:count ? v:count : ''
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nmap <F3> a=strftime("%Y-%m-%d %H:%M:%S")
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()
vnoremap <F1> 
nnoremap <F1> 
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
inoremap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set background=dark
set backupcopy=yes
set expandtab
set formatoptions=qrn1
set gdefault
set grepprg=ag\ --nogroup\ --nocolor
set helplang=en
set hidden
set ignorecase
set listchars=tab:|\ 
set runtimepath=~/.config/nvim,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/vim-trailing-whitespace/,~/.vim/plugged/neomake/,~/.vim/plugged/YouCompleteMe/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-gotham/,~/.vim/plugged/nerdtree-git-plugin/,~/.vim/plugged/vim-table-mode/,~/.vim/plugged/rust.vim/,~/.vim/plugged/vim-racer/,~/.vim/plugged/matchit/,/etc/xdg/nvim,~/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after,~/.vim/plugged/rust.vim/after,/usr/share/vim/vimfiles
set shiftwidth=2
set showmatch
set showtabline=2
set smartcase
set smartindent
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set textwidth=100
set undodir=~/.vim/undo
set undofile
set window=60
" vim: set ft=vim :
