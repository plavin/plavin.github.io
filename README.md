# Patrick's Tools Repo

This repository contains my dotfiles and other helpful documents.

## Getting started on a new machine
1. Clone this repo into `$HOME/plavin.github.io`
```
git clone git@github.com:plavin/plavin.github.io.git $HOME/plavin.github.io
ln -s $HOME/plavin.github.io/tools/vimrc $HOME/.vimrc
ln -s $HOME/plavin.github.io/tools/tmux.conf $HOME/.tmux.conf
mkdir -p $HOME/.config/helix
ln -s $HOME/plavin.github.io/tools/config.toml $HOME/.config/helix/
export PATH=$HOME/plavin.github.io/scripts:$PATH
```

## To use the wiki
1. Open the wiki by opening vim (any file, even no file) and typing `\ww`
2. Get vimwiki help with `:help vimwiki`

# Vim Notes

This file contains vim commands that you may have forgotten, grouped by the plugin they came from. More plugins can be found on [VimAwesome](vimawesome.com).

## [better-whitepsace](https://vimawesome.com/plugin/better-whitespace)

`:StripWhitespace` : Self trailing whitespace

## [vim-surround](https://vimawesome.com/plugin/vim-surround-holy-ground)

`cs<old-surround><new-surround>` : Replace \<old-surround\> with \<new-surround\> quotes
 - E.g. `cs'"` : replace single quotes with double quotes

`ds<surround>` : Delete \<surround\>
 - E.g. `ds'` : delete single quotes

`ys<visual-mode-selection><surround>` : Insert \<surround\> around \<selection\>. 
 - E.g. `ysiw]` : Insert braces around "inner word". 

In cases where the opening and closing symbols are diffent (e.g. with brackets), use the opening symbol to add whitespace along with the new surround, and use the closing symbol otherwise. 

# Ctags for Vim Quickstart

Assuming ctags is already installed, there isn't much you will need to do. From the root of your project, run 

```ctags -R . ```

Now you're ready to use ctags. There are only two commands you need to know.

```
C-]   Go to definition of symbol under cursor
C-t   return from defintition
```

If you're unhappy with the defitiion file opening in the same window, you can use the following commands. 

```
C-w ]   Open defition in new window
:bd     Close buffer
```

Perhaps you're wondering if it is possible to swap to your other window after opening a defintion window. As far as I can tell, the answer is no. You cannot use the window commands like `:n`. And you cannot use buffer commands like `:bn` because that just opens up the file you're editing over the file with the definition. Simply brilliant. 

### Notes
1. Many more ctags options can be found with `ctags --help`. 

2. I have a plugin in my `.vimrc` that will automatically update tags, `Plug 'craigemery/vim-autotag'`.

3. You can find more commands for navigating in Vim with ctags at [this vim fandom page](https://vim.fandom.com/wiki/Browsing_programs_with_tags). (Sub-note: always use adblock on fandom.com.)
