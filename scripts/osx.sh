setup_osx() {
	info "Configuring MacOS default settings"

	# Avoid creating .DS_Store files on network volumes
	defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

	# Show path bar
	defaults write com.apple.finder ShowPathbar -bool true

	# Show hidden files inside the folder
	defaults write com.apple.finder AppleShowAllFiles -bool true

	# Do not show warning when changing file extension
	defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

	# Save screenshots in PNG format
	defaults write com.apple.screencapture type -string "png"

	# Enable developer mode in Safari
	defaults write com.apple.Safari IncludeDevelopMenu -bool true
	defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
	defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

	# Add a context menu item for showing the Web Inspector in web views
	defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

	# Show only active apps in dock
	defaults write com.apple.dock static-only -bool true

	# Automatically hide and show the dock
	defaults write com.apple.dock autohide -bool true
	defaults write com.apple.dock largesize -float 128
	defaults write com.apple.dock "minimize-to-application" -bool true
	defaults write com.apple.dock tilesize -float 32
}
