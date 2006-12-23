private
byDay: aDayIndex for: aMonth at: anOccurance
	| day monthStart |
	
	day := anOccurance < 0
		ifTrue: [ (self allDaysOf: aDayIndex inYearOf: aMonth) reverse at: anOccurance abs ]
		ifFalse: [ anOccurance - 1 * 7 + (self firstOfDay: aDayIndex inMonthOf: (Month month: 1 year: aMonth year)) ].
	
	weeknumbers isEmpty
		ifFalse: [
			((self validWeekStartYearDaysForMonth: aMonth) anySatisfy: [:e| day between: e and: e + 6 ])
				ifFalse: [ ^ nil ]
		].
		
	monthStart := aMonth day.	

	^ (day between: monthStart and: monthStart + aMonth daysInMonth - 1)
			ifTrue: [ day - monthStart + 1 ]
			ifFalse: [ nil ]