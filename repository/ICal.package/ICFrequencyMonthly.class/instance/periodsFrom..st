private - generators
periodsFrom: aDateAndTime

	^ LazyElement
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (self addMonths: 1 to: aDateAndTime))
		with: (LazyValue delay: [ self periodsFrom: (self addMonths: interval to: aDateAndTime) ])