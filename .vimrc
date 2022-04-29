packadd! onedark.vim

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

syntax on
colorscheme onedark
set laststatus=2 number wildmenu showcmd hlsearch ruler nowrap
set showmode autowrite showmatch wrapmargin=0 report=0 ic nu

" Disable bells
set visualbell t_vb=

" Indentation
set shiftwidth=4 softtabstop=4 expandtab autoindent

" Tab shortcuts
nnoremap <LEFT> gT
nnoremap <RIGHT> gt
