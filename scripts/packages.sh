taps=(
)

packages=(
	asdf
	gnupg
	gnutls
	luajit
	mas
	neovim
	node
	openssl@3
	python@3.13
	sqlite
	starship
	stow
	swiftlint
	tree
	tree-sitter
	xcbeautify
	xcode-build-server
	xz
	zellij
	zsh-autosuggestions
	zsh-syntax-highlighting
)

install_packages() {
	info "Configuring taps"
	apply_brew_taps "${taps[@]}"

	info "Installing packages..."
	install_brew_formulas "${packages[@]}"

	info "Cleaning up brew packages"
	brew cleanup
}

post_install_packages() {
}
