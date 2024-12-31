#!/usr/bin/env bash

# Heavily inspired by https://github.com/protiumx/.dotfiles/blob/main/install.sh

set -o errexit
set -o nounset
set -o pipefail

. scripts/utils.sh
. scripts/brew.sh
. scripts/apps.sh
. scripts/config.sh
. scripts/osx.sh
. scripts/fonts.sh
. scripts/packages.sh

cleanup() {
	err "Last command failed"
	info "Finishing..."
}

wait_input() {
	read -p "press enter to continue: " -r
}

main() {
	info "Installing..."

	info "################################################################################"
	info "Homebrew Packages"
	info "################################################################################"
	wait_input
	install_packages

	post_install_packages
	success "Finished installing Homebrew packages"

	info "################################################################################"
	info "Homebrew Fonts"
	info "################################################################################"
	wait_input
	install_fonts
	success "Finished installing fonts"

	info "################################################################################"
	info "MacOS Apps"
	info "################################################################################"
	wait_input
	install_macos_apps

	#install_mas_apps
	success "Finished installing macOS apps"

	info "################################################################################"
	info "Configuration"
	info "################################################################################"
	wait_input

	setup_osx
	success "Finished configuring MacOS defaults. NOTE: A restart is needed"

	stow_dotfiles
	success "Finished stowing dotfiles"

	info "################################################################################"
	info "Crating development folders"
	info "################################################################################"
	mkdir -p ~/dev/heist

	info "################################################################################"
	info "SSH Key"
	info "################################################################################"
	setup_github_ssh
	success "Finished setting up SSH Key"

	success "Done"

	info "System needs to restart. Restart?"

	select yn in "y" "n"; do
		case $yn in
		y)
			sudo shutdown -r now
			break
			;;
		n) exit ;;
		esac
	done
}

trap cleanup SIGINT SIGTERM ERR EXIT

main
