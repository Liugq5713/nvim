
coc: health#coc#check
========================================================================
  - OK: Environment check passed
  - OK: Javascript bundle build/index.js found
  - OK: Service started

defx: health#defx#check
========================================================================
## defx.nvim
  - OK: has("python3") was successful
  - OK: Python 3.6.1+ was successful

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

provider: health#provider#check
========================================================================
## Clipboard (optional)
  - OK: Clipboard tool found: pbcopy

## Python 2 provider (optional)
  - INFO: `g:python_host_prog` is not set.  Searching for python2 in the environment.
  - INFO: Executable: /usr/bin/python2
  - ERROR: Command error (job=29, exit code 1): `'/usr/bin/python2' -c 'import sys; sys.path = list(filter(lambda x: x != "", sys.path)); import neovim; print(neovim.__file__)'` (in '/Users/sarva/.config/nvim')
    stderr: Traceback (most recent call last):  File "<string>", line 1, in <module>  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/neovim/__init__.py", line 5, in <module>    import pynvim  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/__init__.py", line 11, in <module>    from pynvim.msgpack_rpc import (ErrorResponse, child_session, socket_session,  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/msgpack_rpc/__init__.py", line 8, in <module>    from pynvim.msgpack_rpc.event_loop import EventLoop  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/msgpack_rpc/event_loop/__init__.py", line 20, in <module>    from pynvim.msgpack_rpc.event_loop.asyncio import AsyncioEventLoop  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/pynvim/msgpack_rpc/event_loop/asyncio.py", line 23, in <module>    import trollius as asyncio  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/trollius/__init__.py", line 11, in <module>    import selectors  # Will also be exported.  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/trollius/selectors.py", line 14, in <module>    from .py33_exceptions import wrap_error, InterruptedError  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/trollius/py33_exceptions.py", line 16, in <module>    from .compat import PY33  File "/Users/sarva/Library/Python/2.7/lib/python/site-packages/trollius/compat.py", line 3, in <module>    import sixImportError: No module named six
  - INFO: Python version: 2.7.16
  - INFO: pynvim version: unable to load neovim Python module
  - ERROR: pynvim is not installed.
    Error: unable to load neovim Python module
    - ADVICE:
      - Run in shell: /usr/bin/python2 -m pip install pynvim

## Python 3 provider (optional)
  - INFO: Using: g:python3_host_prog = "/opt/homebrew/bin/python3"
  - INFO: Executable: /opt/homebrew/bin/python3
  - INFO: Python version: 3.9.10
  - INFO: pynvim version: 0.4.3
  - OK: Latest pynvim is installed.

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
  - INFO: Nvim node.js host: /Users/sarva/.nvm/versions/node/v16.4.2/lib/node_modules/neovim/bin/cli.js
  - OK: Latest "neovim" npm/yarn package is installed: 4.10.1

## Perl provider (optional)
  - ERROR: perl provider error:
    - ADVICE:
      - "Neovim::Ext" cpan module is not installed

telescope: require("telescope.health").check()
========================================================================
## Checking for required plugins
  - OK: plenary installed.
  - WARNING: nvim-treesitter not found. 

## Checking external dependencies
  - OK: rg: found ripgrep 13.0.0
  - OK: fd: found fd 8.3.1

## ===== Installed extensions =====

vim.lsp: require("vim.lsp.health").check()
========================================================================
  - INFO: LSP log level : WARN
  - INFO: Log path: /Users/sarva/.cache/nvim/lsp.log
  - INFO: Log size: 2 KB

vim.treesitter: require("vim.treesitter.health").check()
========================================================================
  - INFO: Runtime ABI version : 13

