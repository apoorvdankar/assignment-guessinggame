ans=$(expr $(ls -l | egrep -v "^d" | wc -l ) - 1)
function checker {
	echo "Please guess the number of files in this directory:"
	read val
	while [[ ! $val =~ ^[0-9]+$ ]]
	do
		echo "You have entered an invalid response. Please try to guess an Integer value."
		read val
	done
	while [[ $val -ne $ans ]]
	do		
		if [[ $val -gt $ans ]]
		then
			echo "Your guess is too high"
		else
			echo "Your guess is too low"
		fi		
		read val
		while [[ ! $val =~ ^[0-9]+$ ]]
		do
			echo "You have entered an invalid response. Please try to guess an Integer value."
			read val
		done
	done
	echo "You guessed it right. Number of files is $val"
}

checker
