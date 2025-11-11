gpg-connect-agent updatestartuptty /bye > /dev/null
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -x GPG_TTY (tty)
set -x RIPGREP_CONFIG_PATH $HOME/.config/rg/config
set -x HOSTNAME (hostname)
set -x PNPM_HOME $HOME/.local/share/pnpm
set -x PATH "$PATH:$PNPM_HOME:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.luarocks/bin"
set -x GRIM_DEFAULT_DIR $HOME/Media/Pictures/Captures
set -x PERSONAL $HOME/Personal
set -x PASSWORD_STORE_DIR $PERSONAL/pass

# musl-only
set -x LANG "C.UTF-8"
set -x LC_CTYPE "C.UTF-8"
# set -x PERSONAL "/data/data/com:termux/files/home/storage/shared/Personal"

if status is-interactive
  fish_config theme choose Rosé\ Pine
  set fish_greeting ""
  abbr c bat  
  abbr cm chezmoi
  abbr cmi chezmoi add
  abbr cmr chezmoi forget
  abbr cmap chezmoi apply
  abbr cme chezmoi edit
  abbr cmcd chezmoi cd
  abbr cmdd chezmoi diff
	abbr d ddgr -nr
	abbr dw BROWSER=w3m ddgr -n2
  abbr l eza --icons --git
  abbr n nvim
  abbr o xdg-open
  abbr t eza --tree --icons --git
	abbr gaa git add --all
	abbr gco git checkout
  abbr gsc git switch -c
  abbr ytx yt-dlp -x
  abbr yta yt-dlp -x --output "%(autonumber)02d %(title)s.%(ext)s"
  abbr pi sudo xbps-install -y
  abbr pr sudo xbps-remove -R 
  abbr pu sudo xbps-install -Syu

  fzf --fish | source
	starship init fish | source
  zoxide init fish | source
end
