testing
includesEventWithId: aString
	^self events anySatisfy: [:event | event id = aString].