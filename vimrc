" no vi-compatible
set nocompatible

" tabs and spaces handling
:set expandtab
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4

set encoding=utf-8

" always show status bar
set ls=2

" min num of lines to keep above/below the cursor
set scrolloff=2

" start the plugin manager
call pathogen#infect()
call pathogen#helptags()

" allow plugins by file type
filetype plugin on
filetype indent on

" incremental search
set incsearch

" highlighted search results
set hlsearch

" line numbers
set rnu

" taglist (class/module browser) settings
" display function name in status bar
let g:ctags_statusline=1
" automatically start script
let generate_tags=1
" displays taglist results in a vertical window
let Tlist_Use_Horiz_Window=0
" toggle Taglist display
"map <F4> :TlistToggle<CR>
" various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Enable_Fold_Column = 0

" NERDTree (better file browser) toggle
map <F3> :NERDTreeToggle<CR>

map <F4> :MRU<CR>

" tab navigation
map tn :tabn<CR>
map tm :tabm<CR>
map tt :tabnew 

" automatically close autocompletition window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" show pending tasks list
map <F2> :TaskList<CR>

" removes trailing spaces of python files
" (and restores cursor position)
" uncomment the following line to enable 
" autocmd BufWritePre *.py mark z | %s/ *$//e | 'z

" save as sudo
ca w!! w !sudo tee "%"

" colors and settings of autocompletition
highlight Pmenu ctermbg=4 guibg=LightGray
" highlight PmenuSel ctermbg=8 guibg=DarkBlue guifg=Red
" highlight PmenuSbar ctermbg=7 guibg=DarkGray
" highlight PmenuThumb guibg=Black
" use global scope search
let OmniCpp_GlobalScopeSearch = 1
" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2
" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1
" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowScopeInAbbr = 0
" This option allows to display the prototype of a function in the abbreviation part of the popup menu.
" 0 = don't display prototype in abbreviation
" 1 = display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1
" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1
" This option can be use if you don't want to parse using namespace declarations in included files and want to add 
" namespaces that are always used in your project.
let OmniCpp_DefaultNamespaces = ["std"]
" Complete Behaviour
let OmniCpp_MayCompleteDot = 0
let OmniCpp_MayCompleteArrow = 0
let OmniCpp_MayCompleteScope = 0
" When 'completeopt' does not contain "longest", Vim automatically select the first entry of the popup menu. You can 
" change this behaviour with the OmniCpp_SelectFirstItem option.
let OmniCpp_SelectFirstItem = 0

map <F6> /XXX<CR>

let mapleader = ","

" fuzzy finder
nmap <leader>r :FufRenewCache<CR>
nmap <leader>e :FufFile<CR>
nmap <leader>E :FufFileWithCurrentBufferDir<CR>
nmap <leader>g :FufBufferTag<CR>
nmap <leader>f :FufLine<CR>

" other shortcuts
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
imap <leader>w <ESC>:w<CR>
nmap <leader>l :JSHint<CR>

" make some invisible characters visible
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

ab #X #XXX DIRTY
ab //X //XXX DIRTY
ab rqf request.get_form_var(
ab rqu request.user
