Run:

```
 $ curl https://raw.githubusercontent.com/samuelsimoes/vimfiles/master/install.sh | sh
```
Wait and enjoy! =D

##Key mappings
First of all, use all fingers and don't leave the keyboard home row.

To leave visual mode avoid the `ESC` key, it requires a stressful movement. I personaly
use `Ctrl-[`, it permits a movement without leave the home row.

Don't use the arrows too, arrows totally are against the home row, so use the
h,j,k,l to move.

Eventually I use tabs, so, for a better tabs usage I have this leader key mappings.

* `<leader>a` Previous Tab
* `<leader>b` Next Tab
* `<leader>t` New Tab

I like to write and quit files using leader key mappings, so:

* `<leader>w` Write file
* `<leader>x` Write and quit
* `<leader>q` Quite and quit
* `<leader>fq` Force quite

If you use Vim on a Mac OS terminal you have some useful copy/paste from external
clipboard key mappings.

* `<leader>c` Send to external clipboard the visual selected range.
* `<leader>p` Paste on Vim the content from external clipboard (no need to set paste mode :smile:).

I eventually also use splits and to move between then I use the follow mappings
added from [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator).

* `<ctrl-h>` => Left
* `<ctrl-j>` => Down
* `<ctrl-k>` => Up
* `<ctrl-l>` => Right

##Useful plugins

###[ctrlp.vim](https://github.com/kien/ctrlp.vim)
Vim CtrlP is a convenient fuzzy finder.

Use `ctrl-p` and `ctrl-n` to move to up and down on path list.

My CtrlP uses the [FelikZ/ctrlp-py-matcher](https://github.com/FelikZ/ctrlp-py-matcher)
which boost the on type matching on path list. :metal:

Protip: if the path doesn't matter to your search find your file more quickly
using the filename only mode. To toggle between modes use the `ctrl-d` with ctrlp open.

Protip 2: use the "most recently used" mode when you need the last opened files.
On my mappings you can open the CtrlP on MRU mode using `<leader>mr`.
