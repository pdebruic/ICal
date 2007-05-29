*ICalChronos
fromICalString: aString parameters: aDictionary timezone: anICTimezone
	| instance |
	instance := ICChronologyParser fromICalDateAndTimeString: aString class: self.
	aString last = $Z ifTrue: [
		^instance asUTCWithOffsetAdded ].
	^anICTimezone isNil
		ifTrue: [ instance asNominalDateAndTime ]
		ifFalse: [ instance << anICTimezone id ]