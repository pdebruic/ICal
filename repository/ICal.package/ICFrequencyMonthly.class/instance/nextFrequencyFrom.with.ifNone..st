private
nextFrequencyFrom: aDateAndTime with: aCollection ifNone: aFailBlock
	| lastYear |
	
	lastYear := 0.
	^ monthnumbers isEmpty
		ifTrue: [ | next |
			next := aDateAndTime asMonth.
			[ | current |
				current := next.
				(yeardays isEmpty or: [ lastYear = current year ])
					ifFalse: [ lastYear := current year. aCollection addAll: (self byYearDayFor: current) ].
				next := next asDate addMonths: interval.
				current.
			] fixTemps
		]
		ifFalse: [ | month months nextMonthIndex nextYear |
			month := aDateAndTime month.
			months := interval = 1
				ifTrue: [ monthnumbers ]
				ifFalse: [ monthnumbers select: [ :e | (e - month \\ interval) = 0 ] ].
			months := months asOrderedCollection sortBy: [:r :l | r < l].
			months isEmpty ifTrue: [ aFailBlock value ].
			nextYear := aDateAndTime year.
			nextMonthIndex := months findFirst: [:m| m >= month ].
			nextMonthIndex = 0 ifTrue: [ nextYear := nextYear + 1. nextMonthIndex := 1 ].
			[ | current |
				current := Month month: (months at: nextMonthIndex) year: nextYear.
				nextMonthIndex := nextMonthIndex + 1.
				nextMonthIndex > months size ifTrue: [ nextYear := nextYear + 1. nextMonthIndex := 1 ].
				(yeardays isEmpty or: [ lastYear = current year ])
					ifFalse: [
						lastYear := current year.
						aCollection addAll: ((self byYearDayFor: current) select: [:e| months includes: e asDateAndTime month ])
					].
				current.
			] fixTemps
		].