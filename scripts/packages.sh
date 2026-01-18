#taps=(
#)

packages=(
	asdf
  bat
	fd
	gnupg
	gnutls
	jesseduffield/lazygit/lazygit
	lsd
	luajit
	mas
	neovim
	node
	openssl@3
	python@3.13
	shfmt
	sqlite
	starship
	stow
	swiftformat
	swiftlint
	TheZoraiz/ascii-image-converter/ascii-image-converter
	tree
	tree-sitter
  tmux
	xcbeautify
	xcode-build-server
  xcp
	xz
	zellij
	zoxide
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-vi-mode
)

install_packages() {
	info "Configuring taps"
	#apply_brew_taps "${taps[@]}"

	info "Installing packages..."
	install_brew_formulas "${packages[@]}"

	info "Cleaning up brew packages"
	brew cleanup
}

post_install_packages() {
	info "Update this if post install config necessary"
}
