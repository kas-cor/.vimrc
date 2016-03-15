# .vimrc
My Vim for Linux

## Installing

```bash
git clone https://github.com/kas-cor/.vimrc.git ~/.vim
cd ~/.vim
./install.sh

or

git clone https://github.com/kas-cor/.vimrc.git ~/.vim && cd ~/.vim && ./install.sh
```

## Requirements

neocomplete requires Vim 7.3.885+ compiled with if_lua.

Ubuntu, install vim-nox
```bash
apt-get install vim-nox -y
```

## Useing

Leader key `,`

### NeoComplete

`Ctrl+k` - expand snippet

`Tab` - Next step

### NerdTree

`,,` - open/close

`Ctrl+\` - path where open file

### Multiple cursors

`Ctrl+s` - add cursor in palace

### CtrlP

`Ctrl+f` or `,j` - open

`Ctrl+b` - open buffers

### Emmet

`Ctrl+e` expand

#### Commentary

`gc` - Comment selection in visual mode

`gcc` - Comment line in normal mode

`gcap` - Comment paragraph in normal mode

`:7,17Commentary` - Comment from 7 to 17 lines

`:g/TODO/Commentary` - Comment lines with text "TODO"

#### Easygrep

`,vv` - Grep for the word under the cursor, match all occurences, like |gstar|

`,vV` - Grep for the word under the cursor, match whole word, like |star|

`,va` - Like vv, but add to existing list

`,vA` - Like vV, but add to existing list

`,vr` - Perform a global search search on the word under the cursor and prompt for a pattern with which to replace it.

`,vo` - Select the files to search in and set grep options

`,vy*` - Invoke any option from the options explorer, where * is the shortcut for that option.
e.g. `,vyr` - toggles recursion

`,vyb` - sets buffer grepping mode etc.

### Misc

`,m` - remove the Windows ^M - when the encodings gets messed up

`,q` - quickly open a buffer for scribble

`,x` - quickly open a markdown buffer for scribble

`,pp` - toggle paste mode on and off

`0` - Remap VIM 0 to first non-blank character

`,f` - auto format all doc

`,ba` - close all the buffers

`,cd` - switch CWD to the directory of the open buffer

`,<Enter>` - disable highlight

`,e` - fast editing and reloading of vimrc configs

`,w` - fast saving

#### Find/Replace

`;;` - replace word in cursor without confirm

`;'` - replace word in cursor with confirm

#### Spell checking

Pressing `,ss` will toggle and untoggle spell checking

Shortcuts using `<leader>`

`,sn` - ]s

`,sp` - [s

`,sa` - zg

`,s?` - z=

#### Allow to copy/paste between VIM instances

`,y` - copy the current visual selection to ~/.vbuf

`,y` - copy the current line to the buffer file if no visual selection

`,p` - paste the contents of the buffer file

#### Copy/paste Ctrl+C/Ctrl+V

`Ctrl+c` - copy

`Ctrl+v` - paste
