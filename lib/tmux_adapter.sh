# Get the current path in the segment.
get_tmux_cwd() {
  tmux display-message -p "#{pane_current_path}"
}
