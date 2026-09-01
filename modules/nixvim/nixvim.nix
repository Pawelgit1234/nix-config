{ ... }:

# NJovim => Nix Jim Vim + sounds like "Enjoy Vim"

# https://patorjk.com/software/taag/

# Random choose
# BlurVision ASCII
# ANSI Shadow
# Bloody
# Rebel
# Big Money-ne
# THIS
# Alligator
# Alligator2
# Cosmike
# Def Leppard
# DOS Rebel
# Invita
# Poison

# https://chatgpt.com/c/6a945583-09bc-83eb-919e-7b5f02dcebd3
# Без lazy.nvim как менеджера плагинов.
# 
# А для lazy loading использовать встроенный механизм NixVim.
# 
# Сейчас NixVim поддерживает lazy-loading через lz.n, а его собственная документация прямо говорит, что это текущий поддерживаемый lazy-loading provider.
# NixVim отмечает этот механизм как экспериментальный, поэтому для начала я бы не пытался лениво грузить вообще всё подряд.

{
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
    plugins = {
      bufferline.enable = true;
      web-devicons.enable = true;
    };

  };
}