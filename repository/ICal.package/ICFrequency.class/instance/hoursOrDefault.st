defaults
hoursOrDefault

	^ hours notEmpty
		ifTrue: [ hours ]
		ifFalse: [ OrderedCollection new add: dtstart hour; yourself ]