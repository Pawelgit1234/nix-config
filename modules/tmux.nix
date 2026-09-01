{ pkgs, ... }:

{
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
    keyMode = "vi";

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