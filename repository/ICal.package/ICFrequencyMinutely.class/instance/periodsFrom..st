private - generators
periodsFrom: aDateAndTime

	^ LazyList
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (aDateAndTime + (Duration minutes: 1)))
		with: (LazyValue delay: [ self periodsFrom: (aDateAndTime + (Duration minutes: interval)) ])