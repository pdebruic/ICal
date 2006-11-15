accessing
secondsOrDefault
	^ seconds isEmpty
		ifTrue: [ OrderedCollection new add: dtstart second; yourself ]
		ifFalse: [ seconds ]