private - generators
periodsFrom: aDateAndTime

	^ LazyList
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (self addYears: 1 to: aDateAndTime))
		with: (LazyValue delay: [ self periodsFrom: (self addYears: interval to: aDateAndTime) ])