# remap prefix to Control + x
set -g prefix C-x
# unbind C-b
# bind C-a send-prefix

# force a reload of the config file
unbind r
bind r source-file ~/.tmux.conf

# quick pane cycling
unbind ^A
bind ^A select-pane -t :.+

############################


# Use vim keybindings in copy mode
setw -g mode-keys vi

# Setup 'v' to begin selection as in Vim
bind-key -t vi-copy v begin-selection
bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -t vi-copy Enter
bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

