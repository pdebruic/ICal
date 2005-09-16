generated-scanner
scan7
	self step.
	currentCharacter == $- ifTrue: [^self scan33].
	^self reportLastMatch