private-loop
minutesStartingAt: aNumber when: aBoolean

	^ LazyElement fromArray: (aBoolean
		ifTrue: [ self minutesOrDefault select: [:minute| minute >= aNumber ] ]
		ifFalse: [ self minutesOrDefault ])