defaults
minutesOrDefault

	^ minutes notEmpty
		ifTrue: [ minutes ]
		ifFalse: [ OrderedCollection new add: dtstart minute; yourself ]