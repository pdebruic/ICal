accessing
monthsOrDefault
	^ monthnumbers isEmpty
		ifTrue: [ OrderedCollection new add: dtstart month; yourself ]
		ifFalse: [ monthnumbers ]