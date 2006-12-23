private
byDay: aDayIndex for: aMonth at: anOccurance
	^ anOccurance < 0
			ifTrue: [ (self byDay: aDayIndex for: aMonth) reverse at: anOccurance abs ]
			ifFalse: [ anOccurance - 1 * 7 + (self firstOfDay: aDayIndex inMonthOf: aMonth) ]