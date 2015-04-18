filetype plugin indent on
syntax on
let $VIM ='~/.vim/'
set number
colorscheme monokai
set mouse=a

set list
set expandtab
set tabstop=2
set shiftwidth=2
set hls

set laststatus=2                  " always show status bar

" Shortcut to rapidly toggle `set list`
"nmap <leader>l :set list!<CR>

"Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
"
"
"" Highlight the status bar when in insert mode
hi StatusLine ctermbg=235 ctermfg=2

if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=235 ctermfg=2 
  au InsertChange * hi StatusLine ctermbg=yellow ctermfg=black
endif

execute pathogen#infect()
