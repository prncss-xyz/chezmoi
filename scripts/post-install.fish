cd $HOME/.local/share/chezmoi/
git remote add origin git@github.com:prncss-xyz/chezmoi.git || true
update-sysfiles
sudo chsh -s /bin/fish
sudo xbps-install -Syu nonfree
sudo xbps-install -y (cat ~/void/installed)
sudo mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
for service in bluetoothd dbus dhcpd iwd sshd syncthing
    sudo ln -sf /etc/sv/$service /etc/runit/runsvdir/default/
end
sudo ln -sf /usr/share/fontconfig/conf.avail/10-nerd-font-symbols.conf /etc/fonts/conf.avail/
sudo xbps-reconfigure -f fontconfig

cat <<EOF > ~/TODO.md
- [ ] link syncthing
- [ ] link KDEConnect
- [ ] install browser extensions
    - Consent-O-Matic
    - Cookie AutoDelete (import settings)
    - Dark Reader
    - Privacy Badger
    - React Developer Tools
    - SingleFile (configure)
    - uBlock Origin
    - Vimium
EOF
