private
byDay: aDayIndex for: aDateAndTime at: anOccurance
	| day |
	
	day := self firstOfDay: aDayIndex inMonthOf: aDateAndTime.
	anOccurance < 0 ifTrue: [^ (self byDay: aDayIndex for: aDateAndTime) reverse at: anOccurance abs ].
	day := anOccurance - 1 * 7 + day.
	
	day > aDateAndTime daysInMonth ifTrue: [ ^ nil ].
	^ self dateClass year: aDateAndTime year month: aDateAndTime month day: day.