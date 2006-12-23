accessing
daysOrDefaultFromMonth: aMonth
	^ (self hasDates
		ifTrue: [ self daysInMonth: aMonth ]
		ifFalse: [ self defaultDaysForMonth: aMonth ]) select: [:e| e <= aMonth daysInMonth ]