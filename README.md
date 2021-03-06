Run:

```
 $ curl https://raw.githubusercontent.com/samuelsimoes/vimfiles/master/install.sh | sh
```
Wait and enjoy! =D

## Useful plugins

### [ctrlp.vim](https://github.com/kien/ctrlp.vim)
Vim CtrlP is a convenient fuzzy finder.

With CtrlP opened use `ctrl-p` and `ctrl-n` to move to up and down on path list.

My CtrlP uses the [FelikZ/ctrlp-py-matcher](https://github.com/FelikZ/ctrlp-py-matcher)
which boost the on type matching on path list. :metal:

Protip: if the path doesn't matter to your search find your file more quickly
using the filename only mode. To toggle between modes use the `ctrl-d` with ctrlp open.

Protip 2: use the "most recently used" mode when you need the last opened files.
On my mappings you can open the CtrlP on MRU mode using `<leader>mr`.

### [gist-vim](https://github.com/mattn/gist-vim)
Create Gists from your Vim. Just run the comand `:Gist` and get the link. :heartbeat: ([login instructions](https://github.com/mattn/gist-vim#setup))

### [vim-g](https://github.com/szw/vim-g)
Tiny plugin that allows you to perform a quick Google search directly from Vim.
It opens a new browser window with results. Just select what you want search and run the command `:G`.

### [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
Seriously, is like teleportation in your code!
Activated on my Vimfiles with `\`.

And **[more](neobundle.vim)**.
