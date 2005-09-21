generated-scanner
scan23
	self step.
	currentCharacter == $N ifTrue: [^self scan24].
	^self reportLastMatch