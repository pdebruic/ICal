defaults
secondsOrDefault

	^ seconds notEmpty
		ifTrue: [ seconds ]
		ifFalse: [ OrderedCollection new add: dtstart second; yourself ]