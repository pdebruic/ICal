private - generators
periodsFrom: aDateAndTime startingAt: aStartDateAndTime

	^ LazyList
		cons: (ICFrequencyPeriod new start: aStartDateAndTime end: (self addInterval: 1 to: aDateAndTime))
		with: (LazyValue delay: [ self periodsFrom: (self addInterval: interval to: aDateAndTime) ])