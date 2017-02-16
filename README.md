# vim-quick-preview

Preview items in quickfix list.

### Demo

[![asciicast](https://asciinema.org/a/47400.png)](https://asciinema.org/a/47400)

### Installation

This plugin follows the standard runtime path structure, and as such it can be
installed with a variety of plugin managers:

*  [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/j5shi/vim-quick-preview.git ~/.vim/bundle/vim-quick-preview`
*  [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - `NeoBundle 'j5shi/vim-quick-preview'`
*  [Vundle](https://github.com/gmarik/vundle)
  - `Plugin 'j5shi/vim-quick-preview'`
*  [Plug](https://github.com/junegunn/vim-plug)
  - `Plug 'j5shi/vim-quick-preview'`
*  Manual
  - Copy all of the files into your `~/.vim` directory

### Default Key maps

Note: The following mappings work only in Quickfix buffer.
```vim
<space> : Preview the quickfix result in a preview window
<enter> : Open the quickfix result in a new buffer like usual
```
### Customization

#### Disable default key mappings

If you want to disable the default key mappings, adding following to your `~/.vimrc` file.

```vim
let g:vim_quick_preview_default_keymaps = 0
```

#### Define custom key mappings

Currently no interface implemented to define custom key mappings. If you like to do this, let me
know.

