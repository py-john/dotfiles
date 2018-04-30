# Defined in - @ line 0
function dotfiles --description 'alias dotfiles /usr/bin/git --git-dir=/Users/john/.dotfiles --work-tree=/Users/john'
	/usr/bin/git --git-dir=/Users/john/.dotfiles --work-tree=/Users/john $argv;
end
