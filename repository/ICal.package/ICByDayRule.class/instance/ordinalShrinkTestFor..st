as yet unclassified
ordinalShrinkTestFor: eachDate
	| timespanDurationSymbol |
	timespanDurationSymbol := recurringSchedule isMonthly
		ifTrue: [ #asMonth ]
		ifFalse: [ #itsYear ].
	^ self byValues
		anySatisfy: [ :eachValue | 
			eachValue isAssociation
				ifTrue: [ 
					eachValue key = (self dayLetterCodeFor: eachDate)
						and: [ (self ordinalIndexesFor: eachDate ofEach: timespanDurationSymbol) includes: eachValue value ] ]
				ifFalse: [ eachValue = (self dayLetterCodeFor: eachDate) ] ]