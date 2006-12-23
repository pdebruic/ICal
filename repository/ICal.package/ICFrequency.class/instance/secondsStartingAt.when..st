private-loop
secondsStartingAt: aNumber when: aBoolean

	^ LazyElement fromArray: (aBoolean
		ifTrue: [ self secondsOrDefault select: [:second| second >= aNumber ] ]
		ifFalse: [ self secondsOrDefault ])