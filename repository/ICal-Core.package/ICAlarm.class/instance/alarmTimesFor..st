times
alarmTimesFor: aDateAndTime
	| times |
	times := OrderedCollection with: aDateAndTime + trigger value.

	self alarmRepeats
		ifTrue: [ 1 to: repetitions do: [ :eachRepetition | times add: times first + (delay * eachRepetition) ] ].
	^ times