as yet unclassified
initialize
	"self initialize"
	| a |
	a := Dictionary new.
	a at: 1 put: 'st'.
	a at: 2 put: 'nd'.
	a at: 3 put: 'rd'.
	a at: 21 put: 'st'.
	a at: 31 put: 'st'.
	a at: 22 put: 'nd'.
	a at: 23 put: 'rd'.
	arrayOfDates := a.
	today := Date today.
	hourTop := Dictionary new.
1
		to: 24
		do: [:i | hourTop at: i put: 'top:' , ((i-1) * 25 + 93) printString , 'px;']
	