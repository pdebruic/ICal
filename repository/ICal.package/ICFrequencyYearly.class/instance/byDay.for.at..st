private
byDay: aDayIndex for: aDateAndTime at: anOccurance
	| day |
	
	day := self firstOfDay: aDayIndex inMonthOf: (Month month: 1 year: aDateAndTime year).
	anOccurance < 0 ifTrue: [^ (self allDaysOf: aDayIndex inYear: aDateAndTime) reverse at: anOccurance abs ].
	day := anOccurance - 1 * 7 + day.
	
	day > aDateAndTime daysInYear ifTrue: [ ^ nil ].
	^ Date year: aDateAndTime year day: day.