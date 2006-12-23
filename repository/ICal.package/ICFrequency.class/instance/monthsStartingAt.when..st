private-loop
monthsStartingAt: aNumber when: aBoolean

	^ LazyElement fromArray: (aBoolean
		ifTrue: [ self monthsOrDefault select: [:month| month >= aNumber ] ]
		ifFalse: [ self monthsOrDefault ])