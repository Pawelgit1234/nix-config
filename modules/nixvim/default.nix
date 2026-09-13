# NJovim => Nix Jim Vim + sounds like "Enjoy Vim"

# https://patorjk.com/software/taag/
# мне же не нужно прям название
# лучше анимацию пончика https://www.asciiart.eu/animations/ascii-spinning-donut


# https://chatgpt.com/c/6a945583-09bc-83eb-919e-7b5f02dcebd3
# Без lazy.nvim как менеджера плагинов.
# 
# А для lazy loading использовать встроенный механизм NixVim.
# 
# Сейчас NixVim поддерживает lazy-loading через lz.n, а его собственная документация прямо говорит, что это текущий поддерживаемый lazy-loading provider.
# NixVim отмечает этот механизм как экспериментальный, поэтому для начала я бы не пытался лениво грузить вообще всё подряд.

# UI
#├── Catppuccin >
#├── lualine >
#├── bufferline >
#├── which-key >
#└── dashboard >
#
#Navigation
#├── Telescope + whick-key >
#├── Neo-tree explorer >
#
#Editing
#├── Treesitter >
#├── Comment
#├── Autopairs
#├── Surround
#└── Todo-comments
#
#LSP
#├── nvim-lspconfig
#├── blink.cmp
#└── conform.nvim
#
#Git
#├── Gitsigns
#└── Lazygit integration
#
#Languages
#├── Python
#├── Rust
#├── C
#├── C++
#├── Nix
#├── Lua
#└── Bash
# + js, ts, html, css, java

# navigation => harpoon всё же попробвать => нужен ли bufferline?

# все файлы на верхнев уровне (auto_cmds.nix, file_types.nix, итд.)

# посмотреть списки плагинов + посмотреть, что используют в уже сконфигурированых примерах nix vim

# добавить везде which-key поддержку, где надо
# посмотреть в obsidian на счёт предустановленных lazyvim плагинов

# https://github.com/dc-tec/nixvim у него списывать
# https://github.com/spector700/Akari/

# автосохранение кода и ctrl +s

# узнать:
# - клавиши treesitter
# - клавиши neo-tree (создать файл, папку, переименовать итд.)

{ ... }:

{
  imports = [
    ./settings.nix
    ./keymaps.nix
    ./auto_cmds.nix
    ./file_types.nix
    ./plugins
  ];
}
