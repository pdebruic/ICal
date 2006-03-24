*ICalMagritte
textualPriority
	^self priority isNil
		ifFalse: [ self class textualPriorityFor: self priority ]
		ifTrue: [ nil ]