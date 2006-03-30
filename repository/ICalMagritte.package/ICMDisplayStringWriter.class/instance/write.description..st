visiting
write: anObject description: aDescription
	^anObject isNil
		ifFalse: [ anObject displayString ]
		ifTrue: [ '' ]