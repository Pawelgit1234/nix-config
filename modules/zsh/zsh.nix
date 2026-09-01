{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    history = {
      size = 5000;
      save = 5000;
      path = "$HOME/.zsh_history";
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
    };

    plugins = [
      {
        name = "zsh-completions";
        src = pkgs.zsh-completions;
      }
    ];

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls --color";
    };

    initContent = ''
      # History
      setopt appendhistory
      setopt hist_ignore_all_dups
      setopt hist_save_no_dups
      setopt hist_find_no_dups

      # History search
      bindkey '^[[A' history-search-backward
      bindkey '^[[B' history-search-forward

      # Completion
      autoload -Uz compinit
      compinit

      # Completion styling
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zstyle ':completion:*' menu no

      # fzf-tab
      source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh

      zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
      zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

      # fzf
      eval "$(fzf --zsh)"

      # zoxide
      eval "$(zoxide init --cmd cd zsh)"

      # Powerlevel10k
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source ~/.p10k.zsh
    '';
  };

  home.file.".p10k.zsh".source = ./.p10k.zsh;
}