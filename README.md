# LazyVim Cheatsheet

A neovim plugin that displays a comprehensive cheatsheet for LazyVim keybindings in a floating window.

## Features

- Displays a detailed cheatsheet of LazyVim keybindings
- Opens in a floating window for easy reference without disrupting your workflow
- Configurable keybinding to open the cheatsheet
- Search by using /
- Easy to close with 'q' or '<Esc>'

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

Add the following to your Neovim configuration:

```lua
{
  "bjarneo/lazyvim-cheatsheet.nvim",
  keys = {
    {
      "ch",
      function()
        require("lazyvim-cheatsheet").show()
      end,
      desc = "Show LazyVim Cheatsheet",
    },
  },
}
```

## Usage

After installation, you can open the cheatsheet by pressing `<leader>ch` in normal mode (or whatever keybinding you've configured).

To close the cheatsheet, press `q` or `<Esc>` while the cheatsheet window is focused.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
