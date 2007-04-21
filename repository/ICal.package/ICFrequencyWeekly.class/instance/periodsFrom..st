private - generators
periodsFrom: aDateAndTime

	^ LazyElement
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (aDateAndTime + (Duration days: 7)))
		with: (LazyValue delay: [ self periodsFrom: (aDateAndTime + (Duration days: 7 * interval)) ])