setup_github_ssh() {
	if [ -z "${SSH_PASSPHRASE}" ]; then
		echo "SSH_PASSPHRASE is not set. Skipping SSH key setup."
	else
		info "Using SSH_PASSPHRASE to setup SSH keys"
		ssh-keygen -t ed25519 -C "$SSH_PASSPHRASE"

		info "Adding ssh key to keychain"
		ssh-add -K ~/.ssh/id_ed25519

		info "Remember to add ssh key to github 'pbcopy < ~/.ssh/id_ed25519.pub'"
	fi
}

stow_dotfiles() {
	local files=(
		".zshrc"
	)
	local folders=(
		".config/aerospace"
		".config/ghostty"
		".config/nvim"
		".config/starship"
		".config/zellij"
		".gnupg"
		".ssh"
	)
	info "Removing existing config files"
	for file in ${files[@]}; do
		rm -f "$HOME/$f" || true
	done

	# Create the folders to avoid symlinking them
	for d in ${folders[@]}; do
		rm -rf "${HOME:?}/$d" || true
		mkdir -p "$HOME/$d"
	done

	local to_stow="$(find stow -maxdepth 1 -type d -mindepth 1 | awk -F "/" '{print $NF}' ORS=' ')"
	info "Stowing: $to_stow"
	stow -d stow --verbose 1 --target "$HOME" "$to_stow"
}
