events
eventWithId: aString
	^self events detect: [:event | event id = aString] ifNone: [nil].