let mapleader = "\<Space>"
" Command mode mappings
"""""""""""""""""""""""
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" `<Tab>`/`<S-Tab>` to move between matches without leaving incremental search.
" Note dependency on `'wildcharm'` being set to `<C-z>` in order for this to
" work.
" cnoremap <expr> <Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>/<C-r>/' : '<C-z>'
" cnoremap <expr> <S-Tab> getcmdtype() == '/' \|\| getcmdtype() == '?' ? '<CR>?<C-r>/' : '<S-Tab>'

cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" center search results
cnoremap <expr> <CR> getcmdtype() =~ '[/?]' ? '<CR>zz' : '<CR>'

" Visual mode mappings
""""""""""""""""""""""

vnoremap <D-h> <Esc><c-w>h
vnoremap <D-j> <Esc><c-w>j
vnoremap <D-k> <Esc><c-w>k
vnoremap <D-l> <Esc><c-w>l
" keep visual mode after indent
vnoremap > >gv
vnoremap < <gv

" Expand to current path
cabbr %% <C-R>=expand('%:p:h')<CR>

" Normal mode mappings
""""""""""""""""""""""

 " Open the definition in a new vsplit
nnoremap g] :sp<CR>:exec("tag ".expand("<cword>"))<CR>

" vinegar
nmap - <Plug>VinegarUp
nmap \ <Plug>VinegarVerticalSplitUp

nmap \| :vs<CR>
nmap _ :sp<CR>

" backspace to go to the alternate buffer
nnoremap <bs> <c-^>

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Denite
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and
"   close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap <leader>b :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>f :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>a :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>K :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" Coc
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" Repeat last macro if in a normal buffer.
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'

" Avoid unintentional switches to Ex mode.
nmap Q q

" Multi-mode mappings (Normal, Visual, Operating-pending modes).
noremap Y y$

nnoremap <silent> <Right> :vertical resize +5<CR>
nnoremap <silent> <Left> :vertical resize -5<CR>
nnoremap <silent> <Down> :resize -5<CR>
nnoremap <silent> <Up> :resize +5<CR>

nnoremap <D-h> <c-w>h
nnoremap <D-j> <c-w>j
nnoremap <D-k> <c-w>k
nnoremap <D-l> <c-w>l

" Search for the word under cursor in the whole project
" nnoremap K :tag <c-r>=expand("<cword>")<CR><CR>
" nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap <TAB> :BF<CR>
nnoremap <S-TAB> :BB<CR>

nnoremap ytn :tabnew<cr>
nnoremap ytc :tabclose<cr>

" Leader mappings
"""""""""""""""""
nnoremap <leader>1 :set foldlevel=1<cr>
nnoremap <leader>2 :set foldlevel=2<cr>
nnoremap <leader>v :e ~/.vimrc<cr>
nnoremap <leader>V :e ~/.vim/vimrc.bundles<cr>
" nnoremap <leader>a :Ack!<Space>

" Disable highlighting
nnoremap <leader>h :noh<cr>

" Copy file path
nmap <leader>p :let @" = expand("%")<CR>

" Insert mode mappings
""""""""""""""""""""""

xnoremap <D-h> <C-w>h
xnoremap <D-j> <C-w>j
xnoremap <D-k> <C-w>k
xnoremap <D-l> <C-w>l

" Disable backspace so I am forced to use C-h
inoremap <BS> <Nop>

" Disable <C-Space>
" http://shallowsky.com/blog/linux/editors/vim-ctrl-space.html
inoremap <Nul> <Space>
inoremap <C-@> <Space>
noremap  <Nul> <Nop>
vnoremap <Nul> <Nop>
cnoremap <Nul> <Nop>
nnoremap <Nul> <Nop>

" Terminal mode mappings
""""""""""""""""""""""""
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  " tnoremap <C-c> <C-\><C-n>

  " Terminal mode:
  tnoremap <D-h> <c-\><c-n><c-w>h
  tnoremap <D-j> <c-\><c-n><c-w>j
  tnoremap <D-k> <c-\><c-n><c-w>k
  tnoremap <D-l> <c-\><c-n><c-w>l

  tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'
endif
