Useful links:
- [Solarized theme for MATE terminal](https://github.com/oz123/solarized-mate-terminal)
- [Base 16 themes for GNOME terminal](https://github.com/chriskempson/base16-gnome-terminal)
- [haskell-vim-now](https://github.com/begriffs/haskell-vim-now)

Misc
====

Changing runtime path in vim
----------------------------
```viml
" If you're using Vundle, you have to put it before and after vundle loading
let &rtp = substitute(&rtp, $HOME."/\.vim", $HOME."/\.haskell-vim-now/\.vim", "g")
```
