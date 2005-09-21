generated-scanner
scan8
	self step.
	currentCharacter == $- ifTrue: [^self scan33].
	^self reportLastMatch