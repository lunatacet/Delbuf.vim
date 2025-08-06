## Introduction

In Vim, deleting active buffers leads to associated windows and tabs being automatically closed - Delbuf.vim helps manoeuvre around this.

## Installation

```
Plug 'lunatacet/Delbuf.vim'
```

## Usage

`<Leader>d` to delete the buffer displayed in the currently active window (even if the buffer is modified, ie like `:bd!`).

## Details

The default mapping is defined as:

```
nnoremap <Leader>d <Cmd>call Delbuf#Delbuf('bd!')<CR>
```

`Delbuf#Delbuf()` accepts two values as an argument: `'bd'` or `'bd!'`. This determines whether modified buffers can be deleted.

`set hidden` is necessary to delete modified buffers successfully (even with `'bd!'` as an argument).
