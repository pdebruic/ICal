printing
printDate
	| st a |
	st := ReadWriteStream on: String new.
	a := Array new: 3.
	a at: 1 put: 'st'.
	a at: 2 put: 'nd'.
	a at: 3 put: 'rd'.
	1
		to: 3
		do: [:i | st
				nextPut: (date monthName at: i)].
	st nextPut: $,;
		 nextPut: Character space.
	1
		to: 3
		do: [:i | st
				nextPut: (date dayOfWeekName at: i)].
	st nextPut: Character space;
		 nextPutAll: date dayOfMonth printString;
		
		nextPutAll: (a
				at: date dayOfMonth printString last printString asInteger
				ifAbsent: ['th']).
	^ st contents