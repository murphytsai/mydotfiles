#!/usr/bin/env bash
#
# Set Linux Defaults

source ~/.dotfiles/_script/logging

if test ! "$(which gsettings)"; then
  exit 0
fi

header "Linux Defaults"

gsettings set com.canonical.indicator.bluetooth visible false
gsettings set org.pantheon.files.preferences single-click false

success "Configure Pantheon Button Layout"
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/DecorationLayout': <'close,minimize,maximize'>}"
gsettings set org.pantheon.desktop.gala.appearance button-layout "'close,minimize,maximize'"
gsettings set org.gnome.desktop.wm.preferences button-layout "'close,minimize,maximize'"

success "Configure Workspaces"
gsettings set org.pantheon.desktop.gala.behavior dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

success "Solarized Terminal Theme"
gsettings set org.pantheon.terminal.settings font 'Droid Sans Mono for Powerline 10'
gsettings set org.pantheon.terminal.settings background '#00002B2B3636'
gsettings set org.pantheon.terminal.settings foreground '#838394949696'
gsettings set org.pantheon.terminal.settings cursor-shape I-Beam
gsettings set org.pantheon.terminal.settings cursor-color '#838394949696'
gsettings set org.pantheon.terminal.settings palette '#070736364242:#DCDC32322F2F:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#858599990000:#65657B7B8383:#26268B8BD2D2:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3'
gsettings set org.pantheon.terminal.settings opacity 98	
gsettings set org.pantheon.terminal.settings follow-last-tab true

if test "$(which plank)"; then
	success "Configure Plank"
	sed -i "s/^HideMode=.$/HideMode=1/" ~/.config/plank/dock1/settings
fi

footer "Defaults configured"
