private-loop
daysInMonth: aMonth andYear: aYear startingAt: aStartDateAndTime when: aBoolean
	|month|
	
	month := Month month: aMonth year: aYear.

	^ LazyElement fromArray: (aBoolean
		ifTrue: [ (self daysOrDefaultFromMonth: month) select: [:e| e >= aStartDateAndTime dayOfMonth ] ]
		ifFalse: [ self daysOrDefaultFromMonth: month ])