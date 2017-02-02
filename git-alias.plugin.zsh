tagsBetween() {
	if [ -z "$1" ] && [ -z "$2" ]
		then
		echo "Tags between dates: since and until dates must be setted"
	fi

	git log --since "$1" --until "$2" --no-walk --tags --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset'
}

glolBetween() {
	if [ -z "$1" ] && [ -z "$2" ]
		then
		echo "Tags between dates: since and until dates must be setted"
	fi

	git log --since "$1" --until "$2" --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commit
}

alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gdiogenes="git for-each-ref --sort='authoremail' --format='%(committerdate)%09%(authorname) %(authoremail) %(refname)%09=> %(subject)' refs/remotes/origin/ | sed 's/refs\/remotes\/origin\///'"
alias gtagsinfo="git log --no-walk --tags --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset'"
alias gtagsbt=tagsBetween
alias glolbt=glolBetween