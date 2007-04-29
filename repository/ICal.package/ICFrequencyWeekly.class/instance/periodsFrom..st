private - generators
periodsFrom: aDateAndTime

	^ LazyList
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (aDateAndTime + (Duration days: 7)))
		with: (LazyValue delay: [ self periodsFrom: (aDateAndTime + (Duration days: 7 * interval)) ])