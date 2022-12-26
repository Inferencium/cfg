" Neovim - Configuration

" Copyright 2022-2023 Inference
" SPDX-License-Identifier: BSD 3-Clause-Clear

" Version: 0.1.0.3


" Editor.
set number
set tabstop=4

" Plugins.
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'nvim-tree/nvim-tree.lua'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
