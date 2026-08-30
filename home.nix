{ config, pkgs, ... }:

{
  home.username = "jim";
  home.homeDirectory = "/home/jim";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono

    fzf
    zoxide

    fastfetch
  ];

  home.sessionVariables = {
    # EDITOR = "nvim";
  };

  programs.home-manager.enable = true;



  # == Alacritty ==
  programs.alacritty = {
    enable = true;

    theme = "catppuccin_mocha";

    settings = {

      terminal.shell = {
        program = "/home/jim/.nix-profile/bin/zsh";
      };

      window = {
        padding = {
          x = 8;
          y = 8;
        };
        opacity = 1.0;
      };

      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
        size = 12.0;
      };

      cursor = {
        style = {
          shape = "Block";
          blinking = "Off";
        };
      };

    };
  };


  # == Zsh ==
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

  home.file.".p10k.zsh".source = ./p10k.zsh;

  # == Tmux == 
  programs.tmux = {
    enable = true;

    plugins = with pkgs.tmuxPlugins; [
      catppuccin
      yank
    ];

    shell = "${pkgs.zsh}/bin/zsh";
    historyLimit = 50000;
    clock24 = true;
    baseIndex = 1;

    extraConfig = ''
      set -g automatic-rename on
      set -g automatic-rename-format '#{pane_current_command}'

      set -g window-status-format \
        '#[fg=#11111b,bg=#{@thm_overlay_2}] #I #[fg=#cdd6f4,bg=#{@thm_surface_0}] #W '

      set -g window-status-current-format \
        '#[fg=#11111b,bg=#{@thm_mauve}] #I #[fg=#cdd6f4,bg=#{@thm_surface_1}] #W '

      set -g status-left '[#S] '
      set -g status-right '%H:%M '

      set -agF status-right "#{E:@catppuccin_status_cpu}"
      set -ag status-right "#{E:@catppuccin_status_uptime}"

      run-shell ${pkgs.tmuxPlugins.cpu}/share/tmux-plugins/cpu/cpu.tmux

      # set vi-mode
      set-window-option -g mode-keys vi

      # keybindings
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

      bind '"' split-window -v -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"

      set -g renumber-windows on
    '';
  };
}