# wintitle.nvim

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

A simple Neovim plugin to display details of each window on the top.

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

It's recommended to disable the `aerial` component in your `lualine` config
if you use this plugin - just to avoid the duplicates. You should do
something like this in your plugin config if you are using LazyVim:

```lua
{
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Disable the last item on the lualine_c section,
    -- which should be the Aerial component.
    opts.sections.lualine_c[#opts.sections.lualine_c] = nil
  end,
}
```
