private-loop
hoursStartingAt: aNumber when: aBoolean

	^ LazyElement fromArray: (aBoolean
		ifTrue: [ self hoursOrDefault select: [:hour| hour >= aNumber ] ]
		ifFalse: [ self hoursOrDefault ])