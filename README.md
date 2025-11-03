# wintitle.nvim

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

A simple neovim plugin to display details of each window on the top.

**NOTE**: The plugin is not yet finished nor polished, but it meets my needs at
its current state. I've mainly created it for myself, but in case of interest
(that I don't really expect) I'm willing to work on this more.

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "pyrooka/wintitle.nvim",
  config = function()
    require("wintitle").setup()
  end
}
```
