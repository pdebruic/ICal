*ICalMagritte
textualPriority: aString
	self aString isNil
		ifFalse: [ self priority: (self class integerPriorityFor: aString) ]
		ifTrue: [ self priority: nil ]