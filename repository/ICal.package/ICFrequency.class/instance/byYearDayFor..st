private
byYearDayFor: aDateAndTime
	| dates |
	
	dates := OrderedCollection new.
	
	yeardays do: [:day|
		day < 0 ifTrue: [ day := aDateAndTime daysInYear - (day abs - 1) ].
		dates add: (Date year: aDateAndTime year day: day).
	].

	^ dates.