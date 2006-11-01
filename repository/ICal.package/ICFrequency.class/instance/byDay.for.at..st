private
byDay: aDayIndex for: aMonth at: anOccurance
	| day |
	
	day := self firstOfDay: aDayIndex inMonth: aMonth.
	anOccurance < 0 ifTrue: [^ (self byDay: aDayIndex for: aMonth) reverse at: anOccurance abs ].
	day := anOccurance - 1 * 7 + day.
	
	day > aMonth daysInMonth ifTrue: [ ^ nil ].
	^ self dateClass year: aMonth year month: aMonth month day: day.