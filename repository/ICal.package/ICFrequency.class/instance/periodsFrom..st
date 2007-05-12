private - generators
periodsFrom: aDateAndTime

	^ LazyList
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (self addInterval: 1 to: aDateAndTime))
		with: (LazyValue delay: [ self periodsFrom: (self addInterval: interval to: aDateAndTime) ])