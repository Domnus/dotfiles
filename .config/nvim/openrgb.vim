" default lightline values
let g:lightline = {}
let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'filename', 'modified' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
let g:lightline.inactive = {
      \ 'left': [ [ 'filename' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ] ] }
let g:lightline.tabline = {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [ [ 'close' ] ] }

" openrgb modifications
let g:lightline.active.left[0][0] = 'mymode'
let g:lightline.component_function = {'mymode': 'MyMode'}
function MyMode() abort
  if g:openrgb_is_ready
    call OpenRGBChangeColorFromMode(mode())
  endif
  return lightline#mode()
endfunction
autocmd FocusGained * call OpenRGBChangeColorFromMode(mode(), 1)
