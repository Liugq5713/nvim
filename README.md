# MY NEOVIM CONFIG

for frontend engineer

## 关注

- [sidebar-nvim/sidebar.nvim: A generic and modular lua sidebar for Neovim](https://github.com/sidebar-nvim/sidebar.nvim)
coc: health#coc#check
========================================================================
  - OK: Environment check passed
  - OK: Javascript bundle build/index.js found
  - OK: Service started

defx: health#defx#check
========================================================================
  - ERROR: Failed to run healthcheck for "defx" plugin. Exception:
    function health#check[20]..health#defx#check[3]..<SNR>116_check_required_python_for_defx[7]..defx#init#_python_version_check, line 9
    Vim(return):E121: Undefined variable: g:defx#_python_version_check

floaterm: health#floaterm#check
========================================================================
## common
  - INFO: Platform: macos
  - INFO: Nvim: NVIM v0.6.1
  - INFO: Plugin: e4166b0


## terminal
  - OK: Terminal emulator is available

## floating
  - OK: Floating window is available

nvim: health#nvim#check
========================================================================
## Configuration
  - OK: no issues found

## Performance
  - OK: Build type: Release

## Remote Plugins
  - OK: Up to date

## terminal
  - INFO: key_backspace (kbs) terminfo entry: key_backspace=^H
  - INFO: key_dc (kdch1) terminfo entry: key_dc=\E[3~
  - INFO: $TERM_PROGRAM='tmux'
  - INFO: $COLORTERM='truecolor'

## tmux
  - OK: escape-time: 10
  - INFO: Checking stuff
  - OK: focus-events: on
  - INFO: $TERM: screen-256color
  - WARNING: Neither Tc nor RGB capability set. True colors are disabled. |'termguicolors'| won't work properly.
    - ADVICE:
      - Put this in your ~/.tmux.conf and replace XXX by your $TERM outside of tmux:
          set-option -sa terminal-overrides ',XXX:RGB'
      - For older tmux versions use this instead:
          set-option -ga terminal-overrides ',XXX:Tc'

nvim-treesitter: require("nvim-treesitter.health").check()
========================================================================
## Installation
  - OK: `tree-sitter` found 0.20.4 (parser generator, only needed for :TSInstallFromGrammar)
  - OK: `node` found v16.4.2 (only needed for :TSInstallFromGrammar)
  - OK: `git` executable found.
  - OK: `cc` executable found. Selected from { vim.NIL, "cc", "gcc", "clang", "cl", "zig" }
    Version: Apple clang version 12.0.5 (clang-1205.0.22.11)
  - OK: Neovim was compiled with tree-sitter runtime ABI version 13 (required >=13). Parsers must be compatible with runtime ABI.

## Parser/Features H L F I J
  - javascript     x x x x x 
  - vue            x . x x x 
  - bash           x x x . x 
  - css            x . x x x 
  - html           x x x x x 
  - typescript     x x x x x 

  Legend: H[ighlight], L[ocals], F[olds], I[ndents], In[j]ections
         +) multiple parsers found, only one will be used
         x) errors found in the query, try to run :TSUpdate {lang}

## The following errors have been detected:
  - ERROR: javascript(highlights): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
  - ERROR: javascript(locals): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
  - ERROR: javascript(folds): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
  - ERROR: javascript(indents): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
  - ERROR: javascript(injections): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
  - ERROR: vue(highlights): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
  - ERROR: vue(folds): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
  - ERROR: vue(indents): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
  - ERROR: vue(injections): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
  - ERROR: bash(highlights): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
  - ERROR: bash(locals): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
  - ERROR: bash(folds): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
  - ERROR: bash(injections): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
  - ERROR: css(highlights): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
  - ERROR: css(folds): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
  - ERROR: css(indents): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
  - ERROR: css(injections): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
  - ERROR: html(highlights): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
  - ERROR: html(locals): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
  - ERROR: html(folds): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
  - ERROR: html(indents): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
  - ERROR: html(injections): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
  - ERROR: typescript(highlights): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
  - ERROR: typescript(locals): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
  - ERROR: typescript(folds): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
  - ERROR: typescript(indents): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
  - ERROR: typescript(injections): Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture

provider: health#provider#check
========================================================================
## Clipboard (optional)
  - OK: Clipboard tool found: pbcopy

## Python 2 provider (optional)
  - INFO: `g:python_host_prog` is not set.  Searching for python2 in the environment.
  - INFO: Executable: /usr/bin/python2
  - ERROR: Command error (job=12, exit code 1): `'/usr/bin/python2' -c 'import sys; sys.path = list(filter(lambda x: x != "", sys.path)); import neovim; print(neovim.__file__)'` (in '/Users/sarva/.config/nvim')
    stderr: Traceback (most recent call last):  File "<string>", line 1, in <module>  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/neovim/__init__.py", line 5, in <module>    import pynvim  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/__init__.py", line 11, in <module>    from pynvim.msgpack_rpc import (ErrorResponse, child_session, socket_session,  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/msgpack_rpc/__init__.py", line 10, in <module>    from pynvim.msgpack_rpc.session import ErrorResponse, Session  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/msgpack_rpc/session.py", line 7, in <module>    import greenlet  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/greenlet/__init__.py", line 29, in <module>    from ._greenlet import _C_API # pylint:disable=no-name-in-moduleImportError: dlopen(/Users/sarva/Library/Python/2.7/lib/python/site-packages/greenlet/_greenlet.so, 2): no suitable image found.  Did find:	/Users/sarva/Library/Python/2.7/lib/python/site-packages/greenlet/_greenlet.so: mach-o, but wrong architecture	/Users/sarva/Library/Python/2.7/lib/python/site-packages/greenlet/_greenlet.so: mach-o, but wrong architecture
  - INFO: Python version: 2.7.16
  - INFO: pynvim version: unable to load neovim Python module
  - ERROR: pynvim is not installed.
    Error: unable to load neovim Python module
    - ADVICE:
      - Run in shell: /usr/bin/python2 -m pip install pynvim

## Python 3 provider (optional)
  - INFO: Using: g:python3_host_prog = "/usr/bin/python3"
  - INFO: Executable: /usr/bin/python3
  - ERROR: Command error (job=15, exit code 1): `'/usr/bin/python3' -c 'import sys; sys.path = list(filter(lambda x: x != "", sys.path)); import neovim; print(neovim.__file__)'` (in '/Users/sarva/.config/nvim')
    stderr: Traceback (most recent call last):  File "<string>", line 1, in <module>  File "/Users/sarva/Library/Python/3.8/lib/python/site-packages/neovim/__init__.py", line 5, in <module>    import pynvim  File "/Users/sarva/Library/Python/3.8/lib/python/site-packages/pynvim/__init__.py", line 11, in <module>    from pynvim.msgpack_rpc import (ErrorResponse, child_session, socket_session,  File "/Users/sarva/Library/Python/3.8/lib/python/site-packages/pynvim/msgpack_rpc/__init__.py", line 10, in <module>    from pynvim.msgpack_rpc.session import ErrorResponse, Session  File "/Users/sarva/Library/Python/3.8/lib/python/site-packages/pynvim/msgpack_rpc/session.py", line 7, in <module>    import greenlet  File "/Users/sarva/Library/Python/3.8/lib/python/site-packages/greenlet/__init__.py", line 29, in <module>    from ._greenlet import _C_API # pylint:disable=no-name-in-moduleImportError: dlopen(/Users/sarva/Library/Python/3.8/lib/python/site-packages/greenlet/_greenlet.cpython-38-darwin.so, 2): no suitable image found.  Did find:	/Users/sarva/Library/Python/3.8/lib/python/site-packages/greenlet/_greenlet.cpython-38-darwin.so: mach-o, but wrong architecture	/Users/sarva/Library/Python/3.8/lib/python/site-packages/greenlet/_greenlet.cpython-38-darwin.so: mach-o, but wrong architecture
  - INFO: Python version: 3.8.2
  - INFO: pynvim version: unable to load neovim Python module
  - ERROR: pynvim is not installed.
    Error: unable to load neovim Python module
    - ADVICE:
      - Run in shell: /usr/bin/python3 -m pip install pynvim

## Python virtualenv
  - OK: no $VIRTUAL_ENV

## Ruby provider (optional)
  - INFO: Ruby: ruby 2.6.3p62 (2019-04-16 revision 67580) [universal.arm64e-darwin20]
  - WARNING: `neovim-ruby-host` not found.
    - ADVICE:
      - Run `gem install neovim` to ensure the neovim RubyGem is installed.
      - Run `gem environment` to ensure the gem bin directory is in $PATH.
      - If you are using rvm/rbenv/chruby, try "rehashing".
      - See :help |g:ruby_host_prog| for non-standard gem installations.

## Node.js provider (optional)
  - INFO: Node.js: v16.4.2
  - WARNING: Missing "neovim" npm (or yarn) package.
    - ADVICE:
      - Run in shell: npm install -g neovim
      - Run in shell (if you use yarn): yarn global add neovim

## Perl provider (optional)
  - ERROR: perl provider error:
    - ADVICE:
      - "Neovim::Ext" cpan module is not installed

telescope: require("telescope.health").check()
========================================================================
## Checking for required plugins
  - OK: plenary installed.
  - OK: nvim-treesitter installed.

## Checking external dependencies
  - OK: rg: found ripgrep 13.0.0
  - OK: fd: found fd 8.3.1

## ===== Installed extensions =====

vim.lsp: require("vim.lsp.health").check()
========================================================================
  - INFO: LSP log level : WARN
  - INFO: Log path: /Users/sarva/.cache/nvim/lsp.log
  - INFO: Log size: 1 KB

vim.treesitter: require("vim.treesitter.health").check()
========================================================================
  - INFO: Runtime ABI version : 13
  - ERROR: Impossible to load parser for bash: Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/bash.so: mach-o, but wrong architecture
  - ERROR: Impossible to load parser for css: Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/css.so: mach-o, but wrong architecture
  - ERROR: Impossible to load parser for html: Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/html.so: mach-o, but wrong architecture
  - ERROR: Impossible to load parser for javascript: Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/javascript.so: mach-o, but wrong architecture
  - ERROR: Impossible to load parser for typescript: Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/typescript.so: mach-o, but wrong architecture
  - ERROR: Impossible to load parser for vue: Failed to load parser: uv_dlopen: dlopen(/Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so, 1): no suitable image found.  Did find:
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture
    /Users/sarva/.config/nvim/plugged/nvim-treesitter/parser/vue.so: mach-o, but wrong architecture

