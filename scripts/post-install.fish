cd $HOME/.local/share/chezmoi/
gh extension install gennaro-tedesco/gh-f
git remote add origin git@github.com:prncss-xyz/chezmoi.git || true
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
