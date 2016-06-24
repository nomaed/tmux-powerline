# Prints the hostname.

run_segment() {
	local opts=""
  local sshcon=$(tmux showenv SSH_CONNECTION)
	if [ -z "$sshcon" ]; then
		if shell_is_osx || shell_is_bsd; then
			opts="-s"
		else
			opts="--short"
		fi
	fi

	hostname ${opts}
	return 0
}
