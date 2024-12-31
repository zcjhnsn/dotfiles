fonts=(
	font-jetbrains-mono
)

install_fonts() {
	info "Installing fonts"
	install_brew_casks ${fonts[@]}
}
