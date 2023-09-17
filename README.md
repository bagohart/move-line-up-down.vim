# Move-Line-Up-Down.vim
Move the current line up or down. Add blank lines below or above the cursor.

Adapted from [vim-unimpaired](https://github.com/tpope/vim-unimpaired), but
the mappings are dot-repeatable without dependency on [vim-repeat](https://github.com/tpope/vim-repeat).

# Mappings
No mappings are created automatically, add your own. I use the mappings as suggested by [vim-unimpaired](https://github.com/tpope/vim-unimpaired). Vimscript:
```vim
nmap [e <Plug>(move-line-up)
nmap ]e <Plug>(move-line-down)
nmap [<Space> <Plug>(insert-blank-line-above)
nmap ]<Space> <Plug>(insert-blank-line-below)
```
or with `init.lua`:
```lua
vim.keymap.set('n', '[e', '<Plug>(move-line-up)')
vim.keymap.set('n', ']e', '<Plug>(move-line-down)')
vim.keymap.set('n', '[<Space>', '<Plug>(insert-blank-line-above)')
vim.keymap.set('n', ']<Space>', '<Plug>(insert-blank-line-below)')
```

# Usage
Use `[count][e` to move the current line `[count]` lines upwards. Use `[count]]<Space>` to create `[count]` blank lines below the current line. Press `[count].` to repeat last action.

# Credits
Mostly taken from [vim-unimpaired](https://github.com/tpope/vim-unimpaired).

# License
The Vim license applies, see `:h license`.
