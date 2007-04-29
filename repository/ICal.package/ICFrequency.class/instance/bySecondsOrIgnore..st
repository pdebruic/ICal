private - optional defaults
bySecondsOrIgnore: periods

	^ seconds notEmpty
		ifTrue: [ self bySeconds: self secondsOrDefault withPeriods: periods ]
		ifFalse: [ periods ]