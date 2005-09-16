events
removeEventWithId: aString
	| removeEvent |
	removeEvent := self events detect: [:event | event id = aString] ifNone: [^nil].
	self removeEvent: removeEvent.
	