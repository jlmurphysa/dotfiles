" =-=-=--=-=-=-= BASIC MAPPINGS =-=-=--=-=-=-=

let mapleader=","

" Movement / Navigation / Getting around {{{

" Allow moving around in visual mode
nnoremap k gk
nnoremap j gj

" highlight last inserted text
nnoremap gV `[v`]

" don't use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" really, just don't
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" Quick Esc in insert mode
inoremap jk <esc>
inoremap jK <esc>

" Quick open netrw
nnoremap <leader>f :Ex<CR>

" }}}

" Copy/paste {{{
nnoremap <C-c> V"+y
vnoremap <C-c> "+y
vnoremap <C-v> c<ESC>"+p
inoremap <C-v> <ESC>"+pA
nnoremap <C-v> "+p
" }}}

" Buffers / Tabs {{{

" Easier switching between buffers
" nnoremap <silent> [b :bprevious<CR>
" nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> ;; :b#<CR>
for i in range(1, 99)
  execute 'nnoremap <silent> '.i.'; :b'.i.'<CR>'
endfor
for i in range(1, 9)
  execute 'nnoremap <silent> 0'.i.'; :b'.i.'<CR>'
endfor

" Easier switching between tabs
" nnoremap <silent> [t :tabprevious<CR>
" nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> [T :tfirst<CR>
nnoremap <silent> ]T :tlast<CR>

" Quickly open tabs and splits
nnoremap <leader>v :Vexplore!<CR>
nnoremap <leader>b :Hexplore<CR>

" }}}

" Searching {{{

" Make n always search forward
nnoremap <expr> n 'Nn'[v:searchforward]
" Make N always search backward
nnoremap <expr> N 'nN'[v:searchforward]
" Quick turn off search highlighting
nnoremap <silent> <leader><space> :nohlsearch<CR>

" quick insertion of the substitution command
  nnoremap <leader>gs :%s///g<Left><Left>
  xnoremap <leader>gs :s///g<Left><Left>

" }}}

" Command mode mappings {{{

" Easy expansion of the present working directory
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Ex mode - cycle through command history on home row
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" }}}

" =-=-=--=-=-=-= LEADER MAPPINGS =-=-=--=-=-=-=

" Make it easier to make life easier
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quick edit
nnoremap <expr> <leader>e ':e '.expand('%:h').'/'

" Quick write
" nnoremap <leader>w :w<CR>
nnoremap <expr> <leader>W ':saveas '.expand('%:h').'/'

" Quick quit
inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>
nnoremap q<CR> :q<CR>

inoremap <leader>Q <ESC>:q!<CR>
nnoremap <leader>Q :q!<CR>

inoremap <leader>x <ESC>:Sayonara!<CR>
nnoremap <leader>x :Sayonara!<CR>

" strip trailing whitespace
nnoremap <leader>s :call StripTrailingWhitespace()<cr>

" save session
nnoremap <leader>S :mksession<CR>

" Html mappings
" close last open tag
inoremap <leader>/ </<C-x><C-o>
" quick attributes
inoremap <leader>id id=""<esc>i
inoremap <leader>cl class=""<esc>i

" space open/closes folds
nnoremap <space> za

" vim:foldmethod=marker:foldlevel=0
