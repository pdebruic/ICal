accessing
hoursOrDefault
	^ hours isEmpty
		ifTrue: [ OrderedCollection new add: dtstart hour; yourself ]
		ifFalse: [ hours ]