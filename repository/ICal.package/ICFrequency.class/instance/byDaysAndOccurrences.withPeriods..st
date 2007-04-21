private - filtering
byDaysAndOccurrences: daysAndOccurrencesCollection withPeriods: periods

	^ self
		byRuleWithList: daysAndOccurrencesCollection asArray
		start: [:start| DateAndTime year: start year month: start month day: 1 hour: start hour minute: start minute second: start second ]
		delta: [:assoc :dt| |actual actualAssoc|
			actualAssoc := assoc value < 0
				ifTrue: [ assoc value + 1 -> (self deltaToLastDay: assoc key in: dt) ]
				ifFalse: [ assoc value - 1 -> (self deltaToFirstDay: assoc key in: dt) ].
			actual := actualAssoc key * 7 + actualAssoc value.
			(actual between: 0 and: dt daysInMonth - 1)
				ifTrue: [ dt + (Duration days: actual) ]
				ifFalse: [ nil ] ]
		add: [:n :dt| dt + (Duration days: n) ]
		next: [:dt| self addMonths: 1 to: dt ]
		withPeriods: periods