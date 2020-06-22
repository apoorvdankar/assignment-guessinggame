all : README.md

README.md : guessinggame.sh
	echo "#Guessing Game Assignment">>README.md
	date>>README.md
	wc -l guessingame.sh>>README.md
	
	


