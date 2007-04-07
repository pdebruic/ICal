*ICalChronos
fromICalString: aString parameters: aDictionary
	| instance |
	instance := ICChronologyParser fromICalDateAndTimeString: aString class: self.
	aString last = $Z ifTrue: [
		^instance asUTCWithOffsetAdded ].
	^(aDictionary includesKey: 'TZID')
		ifTrue: [ instance << (aDictionary at: 'TZID') ]
		ifFalse: [ instance asNominalDateAndTime ]