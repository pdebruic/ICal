converting
priorityFromString: aString
	(aString asNumber = 5) ifTrue: [^'normal']. 
	(aString asNumber < 5) ifTrue: [^'high'].
	(aString asNumber > 5) ifTrue: [^'low'].