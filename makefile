README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo -n "## Built on " >> README.md
	date "+%A %-d %B, %Y at %I:%M %p" >> README.md
	echo -n "guessinggame.sh contains " >> README.md
	wc -l guessinggame.sh | egrep -o ^[0-9]+ | tr -d "\n" >> README.md 
	echo " lines." >> README.md
