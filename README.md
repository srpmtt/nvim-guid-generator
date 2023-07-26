# nvim-guid-generator

A simple plugin to generate and insert GUIDs into Neovim buffer.

## Installation

Install with your preferred package manager

`srpmtt/nvim-guid-generator`

## Usage

The `InsertGuid` command can be used to insert a GUID at the current cursor position. The command takes an optional format argument that specifies the format of the generated GUID.

The following formats are supported:

- `'uppercase'`: generates an uppercase GUID.
- `'nodash'`: generates a GUID without dashes.
- `'nodash-uppercase'`: generates an uppercase GUID without dashes.

## Example

```vim
" Generate a standard lowercase GUID with dashes
:InsertGuid

" Generate a standard lowercase GUID without dashes
:InsertGuid nodash

" Generate an uppercase GUID with dashes
:InsertGuid uppercase

" Generate an uppercase GUID without dashes
:InsertGuid nodash-uppercase
```
