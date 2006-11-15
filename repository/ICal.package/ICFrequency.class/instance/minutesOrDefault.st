accessing
minutesOrDefault
	^ minutes isEmpty
		ifTrue: [ OrderedCollection new add: dtstart minute; yourself ]
		ifFalse: [ minutes ]