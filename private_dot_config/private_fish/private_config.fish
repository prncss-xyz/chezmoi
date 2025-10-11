set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -x GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye > /dev/null

if status is-interactive
  fish_config theme choose Rosé\ Pine
    # Commands to run in interactive sessions can go here
  abbr c bat  
	abbr d ddgr -n2
	abbr dw BROWSER=w3m ddgr -n2
  abbr l eza --icons --git
  abbr n nvim
  abbr t eza --tree --icons --git
	abbr gaa git add --all
	abbr gco git checkout
  abbr gsc git switch -c
  abbr pi pkg -y i 

  fzf --fish | source
	starship init fish | source
  zoxide init fish | source
end
