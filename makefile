all : README.md

README.md : guessinggame.sh
	echo "# Guessing Game Assignment\n">>README.md
	date>>README.md
	echo "\n">>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
	


