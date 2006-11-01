printing
printTop
	^ 'top:' , (event start hour * 25 + (event start minutes asFloat / 60 * 25 ) + 93) printString , 'px'