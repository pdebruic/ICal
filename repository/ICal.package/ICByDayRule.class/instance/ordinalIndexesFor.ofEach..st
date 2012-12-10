as yet unclassified
ordinalIndexesFor: eachDate ofEach: aTimespanSymbol
	| size ourDateIndex eachDateDayOfWeek |
	size := 0.
	eachDateDayOfWeek := self dayOfWeekFor: eachDate.
	(eachDate perform: aTimespanSymbol)
		datesDo: [ :each | 
			(self dayOfWeekFor: each) = eachDateDayOfWeek
				ifTrue: [ size := size + 1 ].
			each start = eachDate
				ifTrue: [ ourDateIndex := size ] ].
	^ Array with: ourDateIndex with: ourDateIndex - size