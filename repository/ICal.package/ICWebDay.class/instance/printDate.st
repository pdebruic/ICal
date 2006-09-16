printing
printDate
	| st |
	st := ReadWriteStream on: String new.
	

	1
		to: 3
		do: [:i | st
				nextPut: (date dayOfWeekName at: i)].
	st nextPut: Character space;
		 nextPutAll: date dayOfMonth printString;
		
		nextPutAll: (self class arrayOfDates
				at: date dayOfMonth 
				ifAbsent: ['th']).
	^ st contents