let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

source $VIMUSERRUNTIME/chunks/settings.vim

" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
			\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source $VIMUSERRUNTIME/chunks/filetype.vim
source $VIMUSERRUNTIME/chunks/key.vim
source $VIMUSERRUNTIME/chunks/plugins.vim
source $VIMUSERRUNTIME/chunks/coc.vim
source $VIMUSERRUNTIME/chunks/undotree.vim
source $VIMUSERRUNTIME/chunks/color.vim
source $VIMUSERRUNTIME/chunks/plugins_setting.vim

if executable("rg")
    command! -bang -nargs=* Rg
          \ call fzf#vim#grep(
          \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
          \   <bang>0 ? fzf#vim#with_preview('up:60%')
          \           : fzf#vim#with_preview('right:50%:hidden', '?'),
          \   <bang>0)

    nnoremap <C-p>a :Rg
endif

