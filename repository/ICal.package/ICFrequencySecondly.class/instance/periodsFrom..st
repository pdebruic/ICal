private - generators
periodsFrom: aDateAndTime

	^ LazyElement
		cons: (ICFrequencyPeriod new start: aDateAndTime end: (aDateAndTime + (Duration seconds: 1)))
		with: (LazyValue delay: [ self periodsFrom: (aDateAndTime + (Duration seconds: interval)) ])