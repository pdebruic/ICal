accessing
alertCounter
	alertCounter ifNil: [alertCounter := 0].
	^alertCounter.