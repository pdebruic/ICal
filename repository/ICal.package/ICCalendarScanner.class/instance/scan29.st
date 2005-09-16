generated-scanner
scan29
	self step.
	currentCharacter == $D ifTrue: [^self scan30].
	^self reportLastMatch