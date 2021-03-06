" NOTE: This variable doesn't exist before barbar runs. Create it before
"       setting any option.

let bufferline = {}

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable icons
" if set to 'numbers', will show buffer index in the tabline if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = 'both'

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'

" Enable/disable close button
let bufferline.closable = v:false

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 2

" Move to previous/next
nnoremap <silent> gt :BufferNext<CR>
nnoremap <silent> tg :BufferPrevious<CR>
nnoremap <silent> gc :BufferClose<CR>

" Goto buffer in position...
nnoremap <silent> g1 :BufferGoto 1<CR>
nnoremap <silent> g2 :BufferGoto 2<CR>
nnoremap <silent> g3 :BufferGoto 3<CR>
nnoremap <silent> g4 :BufferGoto 4<CR>
nnoremap <silent> g5 :BufferGoto 5<CR>
nnoremap <silent> g6 :BufferGoto 6<CR>
nnoremap <silent> g7 :BufferGoto 7<CR>
nnoremap <silent> g8 :BufferGoto 8<CR>
nnoremap <silent> g9 :BufferLast<CR>

