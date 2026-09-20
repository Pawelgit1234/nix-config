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
#├── Comment >
#├── Autopairs >
#├── Surround >
#└── Todo-comments >
#
#LSP
#├── nvim-lspconfig >
#├── blink.cmp >
#└── conform.nvim >

# illuminate >
# trouble >
# web-devicions >
# flash.nvim >
# nvim-ts-autotag >
# obsidian>
# harpoon всё же попробвать => нужен ли bufferline?>
# fidget >
# colorizer >
# treesj >

# посмотреть списки плагинов >
# посмотерть на ютубе и в итнернете, что люди используют >
# https://github.com/dc-tec/nixvim у него списывать
# https://github.com/spector700/Akari/


# добавить везде which-key поддержку >
# lazyloading

# автосохранение кода >

{ ... }:

{
  imports = [
    ./settings.nix
    ./keymaps.nix
    ./plugins
    ./autocmd.nix
  ];
}
