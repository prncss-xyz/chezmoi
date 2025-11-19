rsync -avz --exclude '*.lock' $HOME/.gnupg $USER@$ARGv[1]:.gnupg
rsync -avz --files-from=push-files.txt $HOME $USER@$ARGV[1]:
# rsync -av --ignore-existing .ssh/* prncss@odonata.local:.ssh/
#
