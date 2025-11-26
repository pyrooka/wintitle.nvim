# wintitle.nvim

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

A simple neovim plugin to display details of each window on the top.

**NOTE**: The plugin is not yet finished nor polished, but it meets my needs at
its current state. I've mainly created it for myself, but in case of interest
(that I don't really expect) I'm willing to work on this more.

<img width="1033" height="340" alt="Screenshot 2025-11-26 at 22 24 17" src="https://github.com/user-attachments/assets/7d44f898-4b92-436e-80dc-4c8880933cf0" />

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
