apps=(
#	alfred
	docker
	ghostty
	gitkraken
	nikitabobko/tap/aerospace
	slack
	tuple
	visual-studio-code
	xcodes
)

mas_apps=(
	1504940162 # RocketSim
)

install_macos_apps() {
	info "Installing MacOS apps..."
	install_brew_casks ${apps[@]}
}

install_mas_apps() {
	info "Installing Mac App Store apps..."
	install_mas_apps ${mas_apps[@]}
}
